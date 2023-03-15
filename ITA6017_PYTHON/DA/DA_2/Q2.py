print("Enter number of S grades: ")
while True:
    numberOfSGrades = int(input())

    if numberOfSGrades >= 0:
        break

    print("Invalid input")

print("Enter attendance percentage: ")
while True:
    attendance = int(input())

    if attendance >= 0:
        break

    print("Invalid input")

print("Enter participation in sports activity: ")
while True:
    participation = int(input())

    if participation >= 0:
        break

    print("Invalid input")

if numberOfSGrades >= 3 and attendance >= 90 and participation >= 2:
    print("Excellent")
elif numberOfSGrades >= 3 and attendance >= 90:
    print("Very Good")
elif numberOfSGrades >= 3 and participation >= 2:
    print("Good")
