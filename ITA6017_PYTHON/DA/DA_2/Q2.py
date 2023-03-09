print("Enter number of S grades: ")
while (True):
    numberOfSGrades = int(input())

    if (numberOfSGrades >= 0):
        break

    print("Number of grades should be positive")

print("Enter attendance percentage: ")
while (True):
    attendance = int(input())

    if (attendance >= 0):
        break

    print("Attendance should be positive")

print("Enter participation in sports activity: ")
while (True):
    participation = int(input())

    if (participation >= 0):
        break

    print("Participation should be positive")

if (numberOfSGrades >= 3):
    if (attendance >= 90):
        if (participation >= 2):
            print("Excellent")
        else:
            print("Very good")