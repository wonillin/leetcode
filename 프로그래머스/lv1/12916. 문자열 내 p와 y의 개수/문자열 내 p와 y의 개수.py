def solution(s):
    cnt = 0
    cnt1 = 0
    
    for char in s.upper():
        if 'P' == char:
            cnt += 1
        elif 'Y' == char:
            cnt1 += 1
            
    return cnt == cnt1