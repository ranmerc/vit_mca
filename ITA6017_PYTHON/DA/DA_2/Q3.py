print("Enter number of labourers engaged: ")
numberOfLabourers = int(input())

print("Enter total number of toys to make: ")
totalNumberOfToys = int(input())

print("Enter total number of days alloted for completion: ")
totalDays = int(input())

print("Enter number of days work done: ")
daysDone = int(input())

print("Enter number of toys made: ")
toysMade = int(input())

labourEfficiency = toysMade / (daysDone * numberOfLabourers)

perDayEfficiencyRequired = (totalNumberOfToys - toysMade) / (totalDays - daysDone)

remainingPerDayEfficiency = perDayEfficiencyRequired - (
    numberOfLabourers * labourEfficiency
)

labourersRequired = int((remainingPerDayEfficiency) / labourEfficiency)

print(
    "Number of more men required for completing the job in allotted period is "
    + str(labourersRequired)
)
