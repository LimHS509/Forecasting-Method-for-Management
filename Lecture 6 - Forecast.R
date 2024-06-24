library(fpp2)

help("ausbeer")

# Create window for data from 1992
beer <- window(ausbeer, start=1992)

# To show the result
(beer <- window(ausbeer, start=1992))

# To do forecasting, use seasonal naive
fc <- snaive(beer)

autoplot(fc)
# Blue solid line: Interval
# Shadow: prediction interval

# Extract residual
res <- residuals(fc)

autoplot(res)

checkresiduals(fc)
# Autocorrelation appear as 3/20*100 = 15, exist 95%
# Ljung-Box text: Joiny hypothesis, is didn't reject Ho, no autocorrelation
# p-value = 8.336e-05: Reject Ho, conclude: there is autocorrelation problem up to lag 8