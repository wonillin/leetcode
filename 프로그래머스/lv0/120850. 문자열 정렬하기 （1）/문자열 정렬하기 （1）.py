import re

# example_text_num = re.sub(r'[^0-9]', '', example_text)

def solution(my_string):
    number = re.sub(r'[^0-9]', '', my_string)
    
    
    answer = []
    
    
    for i in range(len(number)):
        answer.append(int(number[i]))
    
    return sorted(answer)