print("Enter total number of items in the bag: ")
totalItems = int(input())

print("Enter number of nuts in the bag: ")
totalNuts = int(input())

bolts = totalItems - totalNuts

print("Enter percentage of defective nuts in the bag: ")
defNutsPercent = float(input()) / 100

print("Enter percentage of defective nuts in the bag: ")
defBoltsPercent = float(input()) / 100

defNuts = int(totalNuts * defNutsPercent)
defBolts = int(bolts * defBoltsPercent)

totalDef = defNuts + defBolts
totalNonDef = totalItems - totalDef

nonDefPercent = (totalNonDef / totalItems) * 100

print("Percentage of non-defective items in bag: {:.2f}".format(nonDefPercent))