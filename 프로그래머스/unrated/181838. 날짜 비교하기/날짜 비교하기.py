def solution(date1, date2):
    answer = ''
    answer1 = ''
    
    for i in date1:
        answer += str(i)
        
    for i in date2:
        answer1 += str(i)
    
    return 0 if int(answer) >= int(answer1) else 1