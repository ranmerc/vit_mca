# EXPERIMENT 1

n = 20
p = 0.5

# Find Pr(X<8)
pbinom(7, n, p)

# Find Pr(X > 12)
1 - pbinom(12, n, p)

# Find Pr(8 <= X <= 10)
dbinom(8, n, p) + dbinom(9, n, p) + dbinom(10, n, p)


# EXPERIMENT 2

n = 10
p = 0.5

# Find the probability of getting at least 5 heads (that is, 5 or more). 
1 - pbinom(4, n, p)

# Find the probability of getting exactly 5 heads.
dbinom(5, n, p)

# Find the probability of getting between 4 and 6 heads, inclusive
dbinom(4, n, p) + dbinom(5, n, p) + dbinom(6, n, p)


# EXPERIMENT 3

n = 42
p = 0.558

# Sketch the probability mass function (roughly).
x = 0:n

plot(x, dbinom(x, n, p), main = "Probability Mass Function", xlab = "Number of 
college students have used google as a source in at least one of their term 
papers", ylab = "Probability")

# Sketch the cumulative distribution function (roughly).
x = 0:n

plot(x, pbinom(x, n, p), main = "Cumulative Distribution Function", xlab = 
         "Number of college students have used google as a source in at least one of their 
term papers", ylab = "Cumulative Probability")

# Find the probability that X is equal to 17. 
dbinom(17, n, p)

# Find the probability that X is at most 13. 
pbinom(13, n, p)

# Find the probability that X is bigger than 11. 
1 - pbinom(11, n, p)

# Find the probability that X is at least 15. 
dbinom(15, n, p) + pbinom(15, n, p, lower.tail = FALSE)

# Find the probability that X is between 16 and 19, inclusive
pbinom(19, n, p) - pbinom(16, n, p) + dbinom(16, n, p)
