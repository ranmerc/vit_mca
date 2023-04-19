from pprint import pprint


def find_divisors(number):
    divisors = []

    for i in range(1, (number // 2) + 1):
        if number % i == 0:
            divisors.append(i)

    divisors.append(number)

    return divisors


print("Enter n:")
n = int(input())

sequence = []

print("Enter sequence:")
for i in range(n):
    sequence.append(int(input()))


dictionary = {}

for number in sequence:
    dictionary[number] = find_divisors(number)

pprint(dictionary)
