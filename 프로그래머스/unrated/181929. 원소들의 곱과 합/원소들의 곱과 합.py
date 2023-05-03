def solution(num_list):
    answer = 0 
    
    answer1 = 1
    
    for i in num_list:
        answer += i
        
    for i in num_list:
        answer1 *= i
        
    return 1 if answer**2 > answer1 else 0