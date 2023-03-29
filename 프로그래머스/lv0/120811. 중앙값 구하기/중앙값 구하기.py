import math

def solution(array):
    a = sorted(array)
    
    if (len(array) / 2) % 2 == 1 :
        b = math.ceil(len(array) / 2)
    else:
        b = math.floor(len(array) / 2)
    
    return a[b]