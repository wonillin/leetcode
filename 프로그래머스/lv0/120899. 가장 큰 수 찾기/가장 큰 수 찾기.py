a = []

def solution(array):
    
    a.append(max(array))
    a.append(array.index(max(array)))
    
    return a