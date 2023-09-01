def solution(myString):
    lengths = []
    substrings = myString.split('x')
    for substring in substrings:
        lengths.append(len(substring))
    return lengths
