rm(list = ls())

# EXPERIMENT 1
# A company appoints 4 salesman (A, B, C & D) and observes their sales 
# in 3 seasons (Summer, Winter & Monsoon). The figures (Rs. in Lakhs) 
# are given in the following table.
# Write down the R programming code to perform an analysis of variance at 
# 5 % level of significance
salesFigures = c(36, 36, 21, 35, 28, 29, 31, 32, 26, 28, 29, 29)

salesFigures

seasonsLabels = c(rep('Summer', 4), rep('Winter', 4), rep('Monsoon', 4))

seasonsLabels

salesmanLabels = c(rep(c('A', 'B', 'C', 'D'), 3))

salesmanLabels

anova = aov(salesFigures ~ seasonsLabels + salesmanLabels)

summary(anova)

#

rm(list = ls())

# EXPERIMENT 2
# The following data resulted from an experiment to compare three burners 
# (B1, B2 & B3). A Latin square design was used as the tests were made on 
# 3 engines and were spread over 3 days.
# Write down the R programming code to test the hypothesis that there is 
# no difference between (i). days, (ii). engines and (iii). 
# burners at 5 % level of significance
data = c(16, 17, 20, 16, 21, 15, 15, 12, 13)

data

engineLabels = c(rep(c('Engine1', 'Engine2', 'Engine3'), 3))

engineLabels

daysLabels = c(rep('Day1', 3),  rep('Day2', 3), rep('Day3', 3))

daysLabels

burnerLabels = c('B1', 'B2', 'B3', 'B2', 'B3', 'B1', 'B3', 'B1', 'B2')

burnerLabels

anova = aov(data ~ engineLabels + burnerLabels + daysLabels)

summary(anova)

#

rm(list = ls())