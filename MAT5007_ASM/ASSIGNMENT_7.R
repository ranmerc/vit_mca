rm(list = ls())

# EXPERIMENT 1
# A random sample of 10 boys with the following IQs: 70, 120, 110, 101, 88, 83, 95, 98, 107, and
# 100. Write down the R programming code to test whether the data support the assumption of a
# population mean IQ of 100 at 5 % level of significance.

iqs = c(70, 120, 110, 101, 88, 83, 95, 98, 107, 100)

t.test(iqs, mu = 100)

rm(list = ls())

# EXPERIMENT 2
# The mean height and the standard deviation height of 8 randomly chosen soldiers are 166.9 cm
# and 8.29 cm respectively. The corresponding values of 6 randomly chosen sailors are 170.3 cm
# and 8.50 cm respectively. Write down the R programming code to test whether the soldiers are
# shorter than the sailors on the basis of average height
n1 = 8

x1 = 166.9

s1 = 8.29

n2 = 6

x2 = 170.3

s2 = 8.50

alpha = 0.05

t = (x1 - x2)/sqrt(((n1 * s1^2 + n2 * s2^2) / (n1 + n2 - 2)) * (1 / n1 + 1 / n2))

t

talpha = qt(p = (1 - alpha/2), df = (n1 + n2 - 2), lower.tail = FALSE)

talpha

abs(t) < abs(talpha)

rm(list= ls())

