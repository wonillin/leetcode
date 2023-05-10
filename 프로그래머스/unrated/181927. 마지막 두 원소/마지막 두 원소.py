def solution(num_list):
    last = num_list[len(num_list) - 1]
    blast = num_list[len(num_list) - 2]
       
    if last > blast:
        num_list.append(last - blast)
    else:
        num_list.append(last * 2)
        
    
    return num_list