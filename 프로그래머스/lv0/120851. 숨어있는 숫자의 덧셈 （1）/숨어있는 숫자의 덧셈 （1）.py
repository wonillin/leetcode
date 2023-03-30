import re



def solution(my_string):
    numbers = re.findall(r'\d', my_string)
    sum = 0
    
    for i in range(len(numbers)):
        sum = sum + int(numbers[i])
    
    return sum