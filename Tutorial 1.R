library(fpp2) # Use the library to do the graph

# Question 1
mytimeseries <- ts(tute1[,-1], start=1981, frequency=4)
# Graph separate in different
autoplot(mytimeseries, facets=TRUE)
# All data in one graph (Simple graph)
autoplot(mytimeseries)

# Question 2
help(elecdaily) # daily time series

elecdaily # View the data in table
# Frequency = 7, 7 days
# Start = c(1,4), start from day 4
autoplot(elecdaily) # View the whole data in a graph
autoplot(elecdaily[,"Temperature"])

# Insert label for x-axis & y-axis
autoplot(elecdaily[,"Temperature"]) + xlab("Week") + ylab("Max temperature")

# Insert label for x-axis, y-axis, title
autoplot(elecdaily[,"Temperature"]) + xlab("Week") + ylab("Max temperature") + ggtitle("
Max temperature in Victoria") 

# Question 3
help(writing) # search for meaning for writing & data
autoplot(writing)

help(a10)
autoplot(a10) #monthly data

help(h02)
autoplot(h02)
# To check whether the graph is linear or not
autoplot(h02) + geom_smooth() # geom_smooth()` using method = 'loess' and formula = 'y ~ x'

help(goog)
autoplot(goog)
autoplot(goog) + xlab("Year") + ylab("Price ($)") + ggtitle("Google closing stock price")

# From graph check: linear or not, trend, seasonality patten, seasonal variation