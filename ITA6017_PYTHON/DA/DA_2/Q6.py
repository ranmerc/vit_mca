hoursWorkedPerDay = []

for i in range(5):
    print("Enter number of hours worked on day " + str(i + 1) + " : ")
    hoursWorkedPerDay.append(float(input()))

sum = 0
for hours in hoursWorkedPerDay:
    sum += hours

average = sum / 5

print("Average hours worked in a week : " + str(average))
