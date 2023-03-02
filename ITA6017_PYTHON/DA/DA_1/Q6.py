import math


def distBetPoints(p1, p2):
    x1 = round(p1[0], 2)
    x2 = round(p2[0], 2)
    y1 = round(p1[1], 2)
    y2 = round(p2[1], 2)
    return round(math.sqrt(math.pow((x1 - x2), 2) + math.pow((y1 - y2), 2)), 2)


print("Enter number of points: ")
noOfPoints = int(input())

points = []

print("\nEnter points: ")
for i in range(noOfPoints):
    print("\nPoint " + str(i + 1) + ": ")
    print("x: ")
    x = float(input())
    print("y: ")
    y = float(input())
    pointTuple = (x, y)
    points.append(pointTuple)

distanceMap = {}

for i in range(noOfPoints - 1):
    distanceMap[points[i], points[i + 1]] = distBetPoints(points[i], points[i + 1])

maxDistance = float("-inf")
maxDistancePoint = points[0]
for points, distance in distanceMap.items():
    if distance > maxDistance:
        maxDistance = distance
        maxDistancePoint = points

print(
    "Max distance is between points "
    + str(points[0])
    + " and "
    + str(points[1])
    + " having distance "
    + str(maxDistance)
)
