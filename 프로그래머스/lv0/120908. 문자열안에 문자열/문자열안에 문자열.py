import re


def solution(str1, str2):    
    a = ''
    
    if str1.find(str2) != -1:
        a = 1
    else:
        a = 2
    
    
    return a
    