# EXPERIMENT 1

carWeight = c(3.545, 2.6, 3.245, 3.93, 3.995, 3.115, 3.235, 3.225, 2.44, 3.24, 
              2.29, 2.5, 4.02)
carWeight

fuelEfficiency = c(30, 32, 30, 24, 26, 30, 33, 27, 37, 32, 37, 34, 26)

fuelEfficiency

# Karl Pearson's Coefficient of Correlation
cor(carWeight, fuelEfficiency, method="pearson")

cor.test(carWeight, fuelEfficiency, method="pearson")

# Spearman's Rank Correlation Coefficient
cor(carWeight, fuelEfficiency, method="spearman")

cor.test(carWeight, fuelEfficiency, method="spearman")


# EXPERIMENT 2

enjoy = c(4, 15, 1, 11, 13, 19, 6, 10, 15, 3, 11, 20, 7, 11, 10, 6, 7, 18, 8, 
          2, 7, 12, 13, 15, 4, 3, 9, 7, 10, 2, 15, 1)
buy = c(16, 19, 0, 19, 25, 24, 22, 21, 13, 7, 28, 31, 4, 26, 11, 12, 14, 16, 
          20, 13, 12, 23, 22, 19, 12, 10, 7, 22, 7, 0, 16, 17)
read = c(6, 13, 1, 13, 12, 11, 7, 8, 12, 4, 15, 14, 7, 14, 9, 5, 7, 12, 10, 6, 
           9, 13, 9, 13, 9, 5, 7, 8, 8, 2, 7, 6)

df = data.frame(enjoy, buy, read)

df

# Karl Pearson's Coefficient of Correlation
cor(df, method="pearson")

# Spearman’s Rank Correlation Coefficient
cor(df, method="spearman")
