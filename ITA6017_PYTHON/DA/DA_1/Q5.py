print("Enter initial water level: ")
initialWaterLevel = int(input())

print("Enter required water level: ")
requiredWaterLevel = int(input())

print("Height small pebble increases: ")
smallPebbleHeight = int(input())

print("Height big pebble increases: ")
bigPebbleHeight = int(input())

print("Number of small pebbles: ")
smallPebbleCount = int(input())

noOfSmallPebbles = 0

while initialWaterLevel <= requiredWaterLevel and noOfSmallPebbles < smallPebbleCount:
    initialWaterLevel += smallPebbleHeight
    noOfSmallPebbles += 1

noOfBigPebbles = 0

while initialWaterLevel <= requiredWaterLevel:
    initialWaterLevel += bigPebbleHeight
    noOfBigPebbles += 1


totalPebbles = noOfSmallPebbles + noOfBigPebbles

print("Number of small pebbles required: " + str(noOfSmallPebbles))
print("Number of big pebbles required: " + str(noOfBigPebbles))
print("Total number of pebbles required " + str(totalPebbles))
