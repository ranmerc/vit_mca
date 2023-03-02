# for loops have else statement
for i in range(4):
    print(i)
else:
    print("loop has ended")

# match similar to switch but has pattern matching
# name = "Kamran"
# match(name):
#     case 'K': 

def addn(n):
    return lambda x: x + n
# [i for i in range(3)]
# add10 = addn(10)
# print(add10(15))