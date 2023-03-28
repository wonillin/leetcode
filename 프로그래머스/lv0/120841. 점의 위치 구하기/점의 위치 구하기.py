def solution(dot):
    a = ""
    
    if dot[0] >= 0 and dot[1] >= 0:
        a = 1
    elif dot[0]  < 0 and dot[1] >= 0:
        a = 2
    elif dot[0] >= 0 and dot[1] < 0:
        a = 4
    else : 
        a = 3

    return a