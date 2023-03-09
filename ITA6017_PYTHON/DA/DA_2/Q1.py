print("Enter number of colleges: ")
numberOfColleges = int(input())

facilitiesScores = []

academicsScores = []

infrastructureScores = []

for i in range(numberOfColleges):
    print("\nEnter scores for College " + str(i + 1) + " :")

    while (True):
        print("Enter facility score: ")
        facilityScore = int(input())
        
        if (facilityScore <= 25):
            facilitiesScores.append(facilityScore)
            break
        print("Facility score should be <= 25")
    
    while (True):
        print("Enter academics score: ")
        academicScore = int(input())
        
        if (academicScore <= 50):
            academicsScores.append(academicScore)
            break
        print("Academic score should be <= 50")

    while (True):
        print("Enter infrastructure score: ")
        infraScore = int(input())
        
        if (infraScore <= 50):
            infrastructureScores.append(infraScore)
            break
        print("Infrastructure score should be <= 50")
    
totalScores = []

for i in range(numberOfColleges):
    totalScores.append((facilitiesScores[i] + academicsScores[i] + infrastructureScores[i], i))

totalScores.sort(reverse=True)

print("\nCollege\tScore")
for score in totalScores:
    print(score[1] + 1, "\t", score[0])