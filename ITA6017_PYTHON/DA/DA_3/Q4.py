sonList = []
daughterList = []

print("Enter number of items in son's list:")
numSon = int(input())

print("Enter products:")
for i in range(numSon):
    sonList.append(input())


print("Enter number of items in daughter's list:")
numDaughter = int(input())

print("Enter products:")
for i in range(numDaughter):
    daughterList.append(input())

sonSet = set(sonList)
daughterSet = set(daughterList)
similarItems = sonSet.intersection(daughterSet)

print("Son's Shopping list:", sonSet)
print("Daughter's Shopping list:", daughterSet)
print("Common items to buy first:", similarItems)
print("Remaining son's items:", sonSet - similarItems)
print("Remaining daughter's items:", daughterSet - similarItems)
