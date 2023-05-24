str = input()

a = ''

for i in str:
    if i.isupper() == True:
        a += i.lower()
    else:
        a += i.upper()
        
print(a)
        