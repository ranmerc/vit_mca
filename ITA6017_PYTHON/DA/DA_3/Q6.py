customerOne = set()
customerTwo = set()

print("Enter number of items in Customer 1 shopping list:")
numOne = int(input())

print("Enter items:")
for j in range(numOne):
    customerOne.add(input())


print("Enter number of items in Customer 2 shopping list:")
numTwo = int(input())

print("Enter items:")
for j in range(numTwo):
    customerTwo.add(input())

print("First customer's shopping list:", customerOne)
print("Second customer's shopping list:", customerTwo)

commonItems = customerOne.intersection(customerTwo)
commonItemsTuple = tuple(commonItems)

print("Common items in the shopping list:", commonItemsTuple)
