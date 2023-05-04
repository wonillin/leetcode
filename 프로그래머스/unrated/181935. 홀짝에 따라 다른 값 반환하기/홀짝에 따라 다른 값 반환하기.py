def solution(n):
    answer = 0
    answer1 = 0
    
    for i in range(n + 1):
        if i % 2 == 0:
            answer += i**2
        else:
            answer1 += i
    
    
    return answer if n % 2 == 0 else answer1