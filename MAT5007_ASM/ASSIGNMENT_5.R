# EXPERIMENT 1
# Experience has shown that 20% of a manufactured product is of top quality. 
# In one day’s production of 400 articles, only 50 are of top quality. Write 
# down the R programming code to test whether the production of the day chosen 
# is a representative sample at 95% confidence level.

p = 50 / 400

p0 = 0.2

q0 = 1 - p0

n = 400

z = (p - p0) / sqrt((p0 * q0) / n)

z

zalpha = qnorm(p=.05/2, lower.tail=FALSE)

zalpha

abs(z) < abs(zalpha)



rm(list = ls())


# EXPERIMENT 2
# A sample of 900 items is found to have a mean of 3.47 cm. Write down the R 
# programming code to test whether it can be reasonably regarded as a simple sample from a population with mean
# 3.23 cm and SD 2.31 cm at 99% level of confidence.

n = 900

sd = 2.31

xbar = 3.47

mu = 3.23

z = (xbar - mu) / (sd / sqrt(n))

z

zalpha = qnorm(p=.01/2, lower.tail=FALSE)

zalpha

abs(z) < abs(zalpha)
