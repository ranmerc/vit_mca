import csv

freqTable = {}

with open("characters.csv", mode="r") as file:
    csvFile = csv.reader(file)

    for characters in csvFile:
        house = characters[4]

        if house:
            if house in freqTable:
                freqTable[house] += 1
            else:
                freqTable[house] = 1

for house, freq in freqTable.items():
    print(house, freq)
