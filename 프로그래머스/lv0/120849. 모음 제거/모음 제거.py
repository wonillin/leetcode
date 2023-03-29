def solution(my_string):
    vowels = ['a', 'e', 'i', 'o', 'u']
    non_vowels = ''
    for char in my_string:
        if char not in vowels:
            non_vowels += char
    return non_vowels