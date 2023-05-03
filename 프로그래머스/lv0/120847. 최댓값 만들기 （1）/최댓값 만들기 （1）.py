def solution(numbers):
    second = sorted(numbers, reverse = True)[1]
    
    return max(numbers) * second

 # max(numbers) * max(numbers)