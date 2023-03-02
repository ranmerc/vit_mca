print("Enter length of farm: ")
farmLength = int(input())

print("Enter breadth of farm: ")
farmBreadth = int(input())

noOfPlantsAlongLength = 0

for i in range(0, farmLength + 1, 2):
    noOfPlantsAlongLength += 1

noOfPlantsAlongBreadth = 0

for i in range(0, farmBreadth + 1, 2):
    noOfPlantsAlongBreadth += 1

totalNoOfPlants =  noOfPlantsAlongLength * noOfPlantsAlongBreadth

print("Number of plants along breadth: ", int(noOfPlantsAlongBreadth))
print("Number of plants along length: ", int(noOfPlantsAlongLength))
print("Total number of plants: "+ str(totalNoOfPlants))