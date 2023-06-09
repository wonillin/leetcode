def solution(n):
    answer = []
    
    for i in str(n):
        answer.append(i)
    
    return int(''.join(sorted(answer, reverse=True)))