import numpy as np
from BFV_config import BFVSchemeConfiguration


def naive_polynomial_mult_nomod(config: BFVSchemeConfiguration, a_in: np.ndarray, b_in: np.ndarray) -> np.ndarray:
    """Compute a*b mod x^n+1 naively (without NTT)"""
    config.validate_AB(a_in,b_in)
    n = len(a_in)
    cconv = np.convolve(a_in, b_in)
    # compute c mod x^n+1
    c_mod = cconv[:n].copy()
    for k in range(n, len(cconv)):
        c_mod[k-n] -= cconv[k]
    # if you want mod uncomment this line
    #c_mod %= config.q
    return c_mod


polynomial_mult_nomod = naive_polynomial_mult_nomod
