def solution(my_string, n):
    result = ""
    for c in my_string:
        temp = c * n
        result += temp
    return result