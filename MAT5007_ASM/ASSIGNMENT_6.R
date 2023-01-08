# EXPERIMENT 1
# Test of significance for difference of proportions
# Before an increase in excise duty on tea, 800 people out of a sample of 
# 1000 were consumers of tea. After the increase in duty, 800 people were 
# consumers of tea in a sample of 1200 persons. Write down the R programming 
# code to test whether the significant decrease in the consumption
# of tea after the increase in duty at 1 % level of significance.

n1 = 1000

p1 = 800 / 1000

q1 = 1 - p1

n2 = 1200

p2 = 800 / 1200

q2 = 1 - p2

z = (p1 - p2) / sqrt(((p1 * q1) / n1) + ((p2 * q2) / n2))

z

zalpha = qnorm(p=.01, lower.tail=FALSE)

zalpha

abs(z) < abs(zalpha)



rm(list = ls())


# EXPERIMENT 2
# https://www.qalaxia.com/viewDiscussion?messageId=6131ad6898299f1fd76b3b44
# The average mark scored by 32 boys is 72 with a standard deviation of 8, while 
# that for 36 girls is 70 with a standard deviation of 6. Write down the R 
# programming code to test whether the boys are performing better than girls
# on the basis of average mark at 5 % level of significance

n1 = 32

x1 = 72

sd1 = 8

n2 = 36

x2 = 70

sd2 = 6

z = (x1 - x2) / sqrt((sd1 ^ 2 / n1) + (sd2 ^ 2 / n2))

z

zalpha = qnorm(p=.05, lower.tail=FALSE)

zalpha

abs(z) < abs(zalpha)


rm(list = ls())