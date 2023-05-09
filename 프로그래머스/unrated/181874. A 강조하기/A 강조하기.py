def solution(myString):
    answer = ''
    
    for i in myString:
        if 'a' == i or 'A' == i:
            answer += 'A'
        else:
            answer += i.lower()
    
    return answer