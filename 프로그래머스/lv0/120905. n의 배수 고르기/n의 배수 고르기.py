def solution(n, numlist):
    a = []
    
    for i in range(len(numlist)):        
        
        
        if numlist[i] % n == 0:
            a.append(numlist[i])
    
    return a