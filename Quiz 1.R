library(fpp2)

help("hsales")

# Question 1
autoplot(hsales)
# Seasonality pattern appear, cyclic pattern appear

# Question 2
ggseasonplot(hsales)
# Highest plot: March, Lowest plot: January/December

# Question 3
ggsubseriesplot(hsales)
#Highest plot: March, Lowest plot: December

# Question 4
gglagplot(hsales)
gglagplot(hsales, do.lines = F)
# Check relation between y^t & y^t-1 (this month & other month)
# Start from lag 3, unable to check the positive 

# Question 5
ggAcf(hsales)
# Identify autocorrelation
# Lag 1-15, fail as outside the range outside the bound (fail autocorrelation)
# Seasonality pattern appear
