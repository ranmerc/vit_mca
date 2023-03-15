print("Enter marks secured by student: ")
marks = int(input())

print("Enter average marks of the class: ")
average = int(input())

diff = marks - average

grade = ""

if diff >= 20:
    grade = "S"
elif diff >= 10:
    grade = "A"
elif diff <= 5 and diff >= -5:
    grade = "B"
elif diff >= -10:
    grade = "C"
elif diff >= -15:
    grade = "D"
elif diff < -20:
    grade = "F"

print("Grade secured by the student: " + grade)
