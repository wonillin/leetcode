def solution(num_list):
    count = 0
    count1 = 0
    
    for i in num_list :
       if i % 2 == 0 :
        count += 1
       else : 
        count1 += 1
    
    return [count, count1]