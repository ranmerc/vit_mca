def isLeapYear(year):
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    return False

print("Enter date of birth: ")
birthDate = int(input())

print("Enter month of birth: ")
birthMonth = int(input())

print("Enter year of birth: ")
birthYear = int(input())

print("Enter current year: ")
currentYear = int(input())

if (currentYear < birthYear):
    print("Invalid Input")
    exit()
if (birthDate == 29 and birthMonth == 2):
    noOfBirthdays = 0

    for i in range(birthYear + 1, currentYear):
        noOfBirthdays += 1 if isLeapYear(i) else 0

    print("Number of birthdays celebrated: " + str(noOfBirthdays))
else:
    print("Number of birthdays celebrated: " + str(currentYear - birthYear))