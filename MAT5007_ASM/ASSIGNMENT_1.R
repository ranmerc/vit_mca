marks = c(38, 7, 10, 41, 21, 28, 38, 50, 10, 17, 20, 49, 28, 46, 26, 34, 43, 11, 15, 25, 31, 6, 37, 28, 21, 50, 27, 4, 39, 2, 47, 2, 28, 0, 10, 40, 21, 0, 48, 21, 45, 11, 45, 19, 41, 37, 38, 11, 37, 6, 32, 37, 12, 12, 20, 50, 35, 12, 31, 50)

summary(marks)

# mean
mean(marks)

# median
median(marks)

# mode
marksTable = table(marks)

mode = marksTable[marksTable == max(marksTable)]

mode

# range
maxMarks = max(marks)

minMarks = min(marks)

range = maxMarks - minMarks

range

# quartile deviation
Q1 = quantile(marks, 0.25)

Q3 = quantile(marks, 0.75)

quartileDeviation = (Q3 - Q1) / 2

quartileDeviation

# coefficient of quartile devitaion
coeffOfQD = (Q3 - Q1) / (Q3 + Q1)

coeffOfQD

# mean deviation about mean
meanMarks = mean(marks)

mdAboutmean = sum(abs(marks - meanMarks)) / length(marks)

mdAboutmean

# mean deviation about median
medianMarks = median(marks)

mdAboutMedian = sum(abs(marks - medianMarks)) / length(marks)

mdAboutMedian

# standard deviation
sd(marks)

# variance
var(marks)
