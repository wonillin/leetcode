def solution(num_list):
    even_num = num_list[::2]
    odd_num = num_list[1::2]
    
    return max(sum(even_num), sum(odd_num))