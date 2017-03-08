### Homework no. 4: Calibrating a Snow Gauge
setwd("/Users/sidneybrowne/Desktop/math 189/data/hw 4")
data <- read.table("gauge.txt", header = T)
plot(data)

density.686 <- data[1:10,]
boxplot(density.686$gain)

density.604 <- data[11:20,]
boxplot(density.604$gain)

density.508 <- data[21:30,]
boxplot(density.508$gain)

density.412 <- data[31:40,]
boxplot(density.412$gain)

density.318 <- data[41:50,]
boxplot(density.318$gain)

density.223 <- data[51:60,]
boxplot(density.223$gain)

density.148 <- data[61:70,]
boxplot(density.148$gain)

density.080 <- data[71:80,]
boxplot(density.080$gain)

density.001 <- data[81:90,]
boxplot(density.001$gain)

### regression 
# linear x
fit1 <- lm(gain~density, data = data)
summary(fit1)
plot(data)
abline(fit1, col = 2)
#plot(fit1)
# residuals suggest a quadratic trend
plot(fit1$residuals)
abline(a = 0, b = 0, col = 2)

# quadratic x, x^2
gain <- data$gain
density <- data$density
density.squared <- density^2
fit2 <- lm(gain~density+density.squared)
summary(fit2)
plot(data)
lines(density, 405-1409*density+1275*density.squared, col = 2)
#plot(fit2)
plot(fit2$residuals)
abline(a = 0, b = 0, col = 2)

# cubic x, x^2, x^3
gain <- data$gain
density <- data$density
density.squared <- density^2
density.cubed <- density^3
fit3 <- lm(gain~density+density.squared+density.cubed)
summary(fit3)
plot(data)
lines(density, 429.373-1989.918*density+3521.061*density.squared-2186.525*density.cubed, col = 2)
#plot(fit3)
plot(fit3$residuals)
abline(a = 0, b = 0, col = 2)
