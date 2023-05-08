def solution(rny_string):
    for i in rny_string:
        if i in 'm':
           return rny_string.replace('m', 'rn' )
    return rny_string