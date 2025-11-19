`include "types.svh"

module cpu (
  input logic clk, reset
);
  logic rf_ready;

  // Control to RF
  logic rs1_start, rs2_start, rd_start;
  logic [$clog2(NREG)-1:0] rs1_reg, rs2_reg, rd_reg;
  poly_sel_e               rs1_poly, rs2_poly, rd_poly;

  // Streams from RF
  logic rs1_valid, rs2_valid;
  // RS1 - CT1.A, RS2 - CT1.B
  coeff_t rs1_data, rs2_data;
  logic [$clog2(NCOEFF)-1:0] rs1_idx, rs2_idx;
  logic rs1_last, rs2_last;

  // Stream back to RF
  logic rd_valid;
  coeff_t rd_data;
  logic [$clog2(NCOEFF)-1:0] rd_idx;
  logic rd_last;

  //Read from 2 registers
  regfile_big u_rf (.*); 

  // === Functional units (combinational or pipelined)
  // whenever done reading from registers
  wire add_ready  = rs1_valid & rs2_valid;          
  wire mul_ready  = rs1_valid & rs2_valid;
  wire ntt_ready  = rs1_valid;

  wire wide_vec_t mult_out, add_out;     

  mult mult(
    .a(rs1_data),
    .b(rs2_data),
    .out(mul_out)
  );

  adder add(
    .a(rs1_data),
    .b(rs2_data),
    .out(add_out)
  );        

  // === Demux result into RF write stream ===
  always_ff @(posedge clk) begin
    rd_valid <= 1'b0;
    rd_data  <= '0;
    rd_idx   <= rs1_idx;    
    rd_last  <= rs1_last;

    unique case (fu_sel)
      FU_ADD: if (add_ready) begin
        rd_valid <= 1'b1;
        rd_data  <= add_out;
      end
      FU_MUL: if (mul_ready) begin
        rd_valid <= 1'b1;
        rd_data  <= mul_out;
      end
      FU_NTT: if (ntt_ready) begin
        rd_valid <= 1'b1;
        rd_data  <= ntt_out;
        rd_idx   <= rs1_idx;
        rd_last  <= rs1_last;
      end
      default: ;
    endcase

    add_ready <= '0;
    mul_ready <= '0;
    ntt_ready <= '0;
    mod_valid <= 1'b1;
  end

  mod_vector mod(
    .in_vec(rd_data),
    .out_vec(mod_out)
  );

  always_ff @(posedge clk) begin
    if (mod_valid) begin
        rd_data  = mod_out;
        // Write to register enables
    end
  end

  // RESET Logic
    typedef enum logic [1:0] { FU_ADD, FU_MUL, FU_NTT } fu_e;
  fu_e fu_sel;
  
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      fu_sel    <= FU_ADD;
      // example hard-coded job:
      //  R0.A + R1.B -> R2.A
      rs1_reg   <= 0; rs1_poly <= POLY_A;
      rs2_reg   <= 1; rs2_poly <= POLY_B;
      rd_reg    <= 2; rd_poly  <= POLY_A;
      rs1_start <= 0; rs2_start <= 0; rd_start <= 0;
    end else if (rf_ready) begin

      rs1_start <= 1; rs2_start <= 1; rd_start <= 1;
      fu_sel    <= FU_ADD;
    end else begin
      rs1_start <= 0; rs2_start <= 0; rd_start <= 0;
    end
  end

endmodule