def solution(price):
    if price >= 500000:
        a = price * 0.8
    elif price >= 300000:
        a = price * 0.9
    elif price >= 100000:
        a = price * 0.95
    else:
        a = price
    
    return int(a)