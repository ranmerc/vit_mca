# EXPERIMENT 1
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
n = 900

sd = 2.31

xbar = 3.47

mu = 3.23

z = (xbar - mu) / (sd / sqrt(n))

z

zalpha = qnorm(p=.01/2, lower.tail=FALSE)

zalpha

abs(z) < abs(zalpha)
