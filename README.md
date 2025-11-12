# 598_FHE_Research_Project

Directory Structure
├── pymodel
│   ├── BFV_config.py          # Scheme configuration and utility functions
│   ├── BFV_model.py           # Core BFV encrypt/decrypt, client/server
│   ├── generic_math.py        # Number-theoretic and polynomial helpers
│   └── run.py                 # Usage example and basic tests
├── rtl/                       # (To be implemented) RTL Verilog source
└── README.md

## Python Reference Implementation of the BFV Homomorphic Encryption Scheme
This repository provides a Python model of the Brakerski/Fan-Vercauteren (BFV) homomorphic encryption scheme, designed as a correctness and experimentation harness ahead of a hardware (RTL Verilog) implementation.

### Python Files
Python implementation provides a reference for the hardware design  
* `generic_math.py`: General math functions needed (e.g. generate vandermode matrices, uniform random numbers, bit reversal, etc)
* `BFV_config.py`: Manage BFV parameters and functions which are shared publicly between the client and server (t, q, n, batch encode/decode functionality, etc)
* `BFV_model.py`: Implements `BFVSchemeClient` class (handling encrypt/decrypt) and `BFVSchemeServer` class handling encrypted computations (ct/ct and ct/pt add&multiply)
* `run.py`: Runs a test case or other scenarios using the BFV framework

### Running

Usage  
1. Clone the repo.
2. Enter the pymodel/ directory.
3. Install dependencies `python3 -m pip install -r requirments.txt`
4. Run the example `python3 run.py`


