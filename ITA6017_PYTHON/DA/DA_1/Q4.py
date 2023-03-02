print("Enter the initial amount: ")
initialAmount = float(input())

print("Enter number of years to invest: ")
noOfYears = int(input())

print("Enter expected amount: ")
expectedAmount = float(input())

rateOfInterest = ((expectedAmount - initialAmount) / (initialAmount * noOfYears)) * 100

print("Required rate of interest: " + str(rateOfInterest))
