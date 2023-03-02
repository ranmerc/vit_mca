import math

print("Enter weight in pounds: ")
weightInPounds = float(input())

print("Enter height in inches: ")
heightInInches = float(input())

weightInKilos = weightInPounds * 0.4536
heightInMetres = (heightInInches * 2.54) / 100

bmi = round(weightInKilos / math.pow(heightInMetres, 2), 2)

print("BMI of the person is: " + str(bmi))
