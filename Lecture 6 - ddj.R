library(fpp2)

ddj <- diff(dj)

# Plot dj
autoplot(ddj)
# Mean reverting (Go up come back, equal to zero)
# Variance constant

# Acf
ggAcf(ddj)
ggAcf(ddj, lag.max=30)
# Calculate: 1/30*100 (Only one lag outside the bound, lag 6)
# No issue for autocorrelation

# White noise appear in ddj