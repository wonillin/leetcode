def solution(money):
    a = money // 5500

    b = money - (a * 5500)
    
    return [a, b]