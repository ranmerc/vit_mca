df = read.csv("./13012023/restaurant.csv")
df
matrix = as.matrix(df)
matrix
transposedMatrix = t(matrix)
transposedMatrix
values = c(transposedMatrix)
values
labels = c("Item1", "Item2", "Item3")
noOfTreatmentLevels = 3
noOfObservationsPerTreatment = 6
treatmentLabels = gl(noOfTreatmentLevels, 1, noOfObservationsPerTreatment*noOfTreatmentLevels, factor(labels))
treatmentLabels
crdfit = aov(values ~ treatmentLabels)
summary(crdfit)



# significant difference between treatments but no significant difference between blocks
df = read.csv("./13012023/rbd.csv")
df
responseValues = c(t(as.matrix(df)))
responseValues
labels = c("Item1", "Item2", "Item3")
noOfTreatmentLevels = 3
noOfControlBlocks = 6
treatmentLabels = gl(noOfTreatmentLevels, 1, noOfTreatmentLevels*noOfControlBlocks, factor(labels))
treatmentLabels
blockingLables = gl(noOfControlBlocks, noOfTreatmentLevels, noOfControlBlocks*noOfTreatmentLevels)
blockingLables
rbdfit = aov(responseValues ~ treatmentLabels + blockingLables)
summary(rbdfit)