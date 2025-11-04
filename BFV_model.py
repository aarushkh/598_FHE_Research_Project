import numpy as np

class BFVSchemeConfiguration:
    def __init__(self, t: int, q: int, k: int, n: int, ternary: bool = True):
        """
        :param t: Plaintext modulus (prime or power of prime)
        :param q: Ciphertext modulus (t divides q, q much larger than t)
        :param k: Number of polynomials in secret/public key
        :param n: Degree of polynomial + 1
        :param ternary: If true, secret key is ternary {-1,0,1}, else binary {0,1}
        """
        self.t = int(t)
        self.q = int(q)
        self.k = int(k)
        self.n = int(n)
        self.ternary = ternary
        self.Delta = q // t
    
    def is_A_valid(self, A) -> bool:
        """
        Checks that A is a k x n array of integers modulo q
        """
        # Must be (k, n) shape
        if not isinstance(A, np.ndarray):
            raise TypeError("A must be a numpy array")
        if A.shape != (self.k, self.n):
            return False
        if not np.all((0 <= A) & (A < self.q)):
            return False
        return True
    
    def validate_A(self, A):
        if not self.is_A_valid(A):
            raise ValueError("the passed A is not valid for this BFV configuration")
    
    def is_B_valid(self, B) -> bool:
        """
        Checks that B is an n-length array of integers modulo q
        """
        if not isinstance(B, np.ndarray):
            raise TypeError("B must be a numpy array")
        if B.shape != (self.n,):
            return False
        if not np.all((0 <= B) & (B < self.q)):
            return False
        return True
    
    def validate_B(self, B):
        if not self.is_B_valid(B):
            raise ValueError("the passed B is not valid for this BFV configuration")
    
    def validate_AB(self, A, B):
        self.validate_A(A)
        self.validate_B(B)



class BFVSchemeClient:
    def __init__(self, config: BFVSchemeConfiguration):
        """
        :param config: the BFV scheme configuration containing all required parameters and settings
        """
        self.config = config
        # Secret key: k polynomials of degree n-1, coefficients in {-1,0,1} or {0,1}, shape (k, n)
        if config.ternary:
            self._S = np.random.choice([-1, 0, 1], size=(k, n))
        else:
            self._S = np.random.choice([0, 1], size=(k, n))

#    def polynomial_mul(self, a, b):
#        """
#        Polynomial multiplication modulo x^n and coefficients modulo q.
#        """
#        result = np.convolve(a, b)[:self.config.n]
#        if len(result) < self.config.n:
#            result = np.pad(result, (0, self.config.n-len(result)))
#        return result % self.config.q
    def polynomial_mul(self, a, b):
        return a
        raise NotImplementedError("TODO: return the element wise product between point representations of both polynomials")
        

    def encrypt(self, M: np.ndarray):
        """
        Encrypts message polynomial M (coeffs mod t, degree n-1).
        Returns tuple (A, B) where:
            A: shape (k, n), each row is a public polynomial mod q.
            B: shape (n,), the result poly mod q.
        """
        # Message encoding
        M = np.array(M) % self.config.t                      # shape (n, )
        DeltaM = (M * self.config.Delta) % self.config.q            # shape (n, )
        # random A (public key),k polynomials with n coefficients mod q, shape (k, n)
        A = np.random.randint(0, self.config.q, size=(self.config.k, self.config.n))
        # small noise E (centered discrete gaussian), mod q
        E = np.round(np.random.normal(0, 1, size=self.config.n)).astype(int) % self.config.q
        # B = -A*S + DeltaM + E, all mod q, S is persistent secret key
        negAS = (-self.polynomial_mul(A, self._S)) % self.config.q
        B = (negAS + DeltaM + E) % self.config.q
        # return encryption result
        return A, B

    def decrypt(self, A, B):
        self.config.validate_AB(A,B)
        inverse = B + self.polynomial_mul(A, self._S)
        inverse = inverse % self.config.q
        inverse = inverse / self.config.Delta
        message = inverse % self.config.t
        return message



class BFVSchemeServer:
    def __init__(self, config: BFVSchemeConfiguration):
        self.config = config

    def encode(self, P):
        M = np.array(P) % self.config.t
        return M
    
    def add_ciphercipher(self, A1,B1,A2,B2):
        # error checking
        self.config.validate_AB(A1,B1)
        self.config.validate_AB(A2,B2)
        # add
        Anew = (A1+A2) % self.config.q
        Bnew = (B1+B2) % self.config.q
        return Anew, Bnew
    
    def add_cipherplain(self, A1, B1, P2):
        Bnew = B1 + (config.Delta * self.encode(P2))
        return A1, Bnew
    
    def mul_cipherplain(self, A1, B1, P2):
        encoding = self.encode(P2)
        Anew = A1 * encoding
        Bnew = B1 * encoding
        return Anew, Bnew

if __name__ == "__main__":
    t = 17             # example prime
    n = 8              # degree + 1 => degree 7 polynomials
    k = 2
    q = 65299          # q >> t, t divides q, 17*3837
    message = np.array([1 , 2, 3 ,4 ,5 ,6, 7, 8])

    config = BFVSchemeConfiguration(t, q, k, n, True)
    client = BFVSchemeClient(config)
    server = BFVSchemeServer(config)
    cipher = client.encrypt(message)
    print(cipher)
    A1, B1 = cipher
    A2, B2 = cipher
    computed_cipher = server.add_ciphercipher(A1, B1, A2, B2)
    print(computed_cipher)
