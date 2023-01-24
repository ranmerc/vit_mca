rm(list= ls())

# EXPERIMENT 1
# The following data relate to the marks obtained by 11 students in two sets, 
# one held at the beginning of a year and the other at the end of the year after 
# intensive coaching. Do the data indicate that the students have benefited by 
# coaching at 5 % level of significance?
# Test I : 19 23 16 24 17 18 20 18 21 19 20
# Test II : 17 24 20 24 20 22 20 20 18 22 19
x = c(19, 23, 16, 24, 17, 18, 20, 18, 21, 19, 20)

y = c(17, 24, 20, 24, 20, 22, 20, 20, 18, 22, 19)

alpha = 0.05

t.test(x, y, paired = TRUE)

talpha = qt(1 - alpha/2, df = length(x) - 1)

talpha

#

rm(list = ls())

# EXPERIMENT 2
# Two random samples drawn from two normal populations with the following 
# observations.
# Sample I : 21 24 25 26 27
# Sample II : 22 27 28 30 31 36
# Write down the R programming code to test whether the two populations have 
# the same variance at 5 % level of significance
x = c(21, 24, 25, 26, 27)

y = c(22, 27, 28, 30, 31, 36)

var.test(x, y)

#

rm(list = ls())