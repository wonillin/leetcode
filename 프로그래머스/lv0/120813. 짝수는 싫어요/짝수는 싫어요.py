def solution(n):
    a = []
    
    for i in range(0, n + 1):
        if i % 2 == 1:
            a.append(i) 
    
    return a