library(fpp2)

# Question 1 - usgdp
autoplot(usgdp)
# Upward trend (non-linear), no seasonality, no cyclic

# Calculate BoxCox lambda value
lambda.usgdp <- BoxCox.lambda(usgdp) 
print(lambda.usgdp)

# Transformation
autoplot(BoxCox(usgdp, lambda = lambda.usgdp))

# Question 2 - cangas
autoplot(cangas)
# Variance not constant

lambda.cangas <- BoxCox.lambda(cangas)
print(lambda.cangas)

# Transformation
autoplot(BoxCox(cangas, lambda = lambda.cangas))