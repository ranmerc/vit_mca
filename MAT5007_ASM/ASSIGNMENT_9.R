rm(list = ls())

# EXPERIMENT 1
# The following table gives the number of fatal road accidents that occurred 
# during the 7 days of a week. Write down the R programming code to test 
# whether the accidents are uniformly distributed over the week at 95 %
# level of confidence.
numberOfAccidents = c(8, 14, 16, 12, 11, 14, 9)

uniformDistAccidents = c(rep(1/7, 7))

chisq.test(numberOfAccidents, p = uniformDistAccidents)

#

rm(list = ls())

# EXPERIMENT 2
# A total number of 3759 individuals were interviewed according to gender and 
# decision in a public opinion survey on a political proposal with the results 
# as in the following table. Write down the R programming code to test the 
# hypothesis that there is no association between gender and attitude 5% 
# level of significance.
data = matrix(c(1154, 475, 243, 1103, 442, 342), ncol = 3, byrow = T)

data

chisq.test(data)

#

rm(list = ls())

# EXPERIMENT 3
# A random sample is selected from each of 3 makes of ropes (Type 1, Type 2 
# and Type 3) and their breaking strength (in certain units) are measured 
# with the results in the following table. Write down the R programming code 
# to test whether the breaking strengths of the ropes differ 
# significantly at 5 % level of significance
type1BreakingStrength = c(70, 72, 75, 80, 83)

type2BreakingStrength = c(60, 65, 57, 84, 87, 73)

type3BreakingStrength = c(100, 110, 108, 112, 113, 120, 107)

breakingStrengths = c(type1BreakingStrength, type2BreakingStrength, type3BreakingStrength)

breakingStrengths

labels = c(rep("Type 1", length(type1BreakingStrength)), rep("Type 2", length(type2BreakingStrength)), rep("Type 3", length(type3BreakingStrength)))

labels

crdanova = aov(breakingStrengths ~ labels)

summary(crdanova)

#

rm(list = ls())