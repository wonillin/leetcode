import itertools

def solution(numbers):
    answer = []
    
    
    for a in list(itertools.combinations(numbers, 2)):
        answer.append(a[0] * a[1])
    
    
    return max(answer)