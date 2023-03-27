import math

def solution(n, k):
    lamb = 12000 * n 
    drink = 2000 * k
  

    
    return lamb + drink - (math.floor(n/10) * 2000)
