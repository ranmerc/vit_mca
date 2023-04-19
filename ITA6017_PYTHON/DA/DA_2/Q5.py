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
elif -5 <= diff <= 5:
    grade = "B"
elif -10 <= diff <= -6:
    grade = "C"
elif -15 <= diff <= -11:
    grade = "D"
else:
    grade = "F"

print("Grade secured by the student: " + grade)
