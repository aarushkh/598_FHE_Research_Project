import numpy as np
from BFV_config import BFVSchemeConfiguration
from BFV_model import BFVSchemeClient, BFVSchemeServer


if __name__ == "__main__":
    t = 1031    # 1031 is a prime bigger than 2^10 (so we can do 10bit math)
    n = 128    # we can get 8192 results at one time (polynomial degree = n-1)
    q = t*3000  # q >> t, t divides q, q must be around 300-330 bits for practical security
    message1 = np.array([1, 2, 3 ,4 ,5 ,6, 7, 8] + 120*[1])
    message2 = np.array([2, 3, 4 ,5 ,6 ,7, 8, 9] + 120*[1])

    # setup
    config = BFVSchemeConfiguration(t, q, n, False)
    client = BFVSchemeClient(config)
    server = BFVSchemeServer(config)
    # encrypt messages
    cipher1 = client.encrypt(message1)
    cipher2 = client.encrypt(message2)
    A1, B1 = cipher1
    A2, B2 = cipher2
    computed_cipher = server.add_ciphercipher(A1, B1, A2, B2)
    computed_cipherm = server.mul_cipherplain(A1, B1, message2)
    # decrypt
    Ao, Bo = computed_cipherm
    result = client.decrypt(Ao, Bo)
    rounded_result = np.round(result)
    #print(result)
    print(rounded_result)
