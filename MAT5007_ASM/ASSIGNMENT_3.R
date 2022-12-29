salesData = read.csv('C:/Users/deadmercury/Downloads/sales-alldata.csv')

regmodel = lm(REVENUE~TEMPERATURE, data = salesData)

regmodel

regmodel = lm(REVENUE~TEMPERATURE + SUN_HOURS, data = salesData)

regmodel