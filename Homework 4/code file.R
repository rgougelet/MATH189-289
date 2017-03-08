setwd("~/Documents/R studio /hw4")
data <- read.table("gauge.txt", header = T)

density.686 <- data[1:10,]
boxplot(density.686$gain)
summary(density.686$gain)

density.604 <- data[11:20,]
boxplot(density.604$gain)
summary(density.604$gain)

density.508 <- data[21:30,]
boxplot(density.508$gain)
summary(density.508$gain)

density.412 <- data[31:40,]
boxplot(density.412$gain)
summary(density.412$gain)

density.318 <- data[41:50,]
boxplot(density.318$gain)
summary(density.318$gain)

density.223 <- data[51:60,]
boxplot(density.223$gain)
summary(density.223$gain)

density.148 <- data[61:70,]
boxplot(density.148$gain)
summary(density.148$gain)

density.080 <- data[71:80,]
boxplot(density.080$gain)
summary(density.080$gain)

density.001 <- data[81:90,]
boxplot(density.001$gain)
summary(density.001$gain)

#linear regression
# linear x
fit1 <- lm(density~gain, data = data)
summary(fit1)
plot(data$gain, data$density)
abline(fit1, col = 2)

#plot(fit1)
# residuals are very large, and suggest a quadratic trend
plot(fit1$residuals)
abline(a = 0, b = 0, col = 2)
# adding bands
intercept.ci <- fit1$coefficients[1]+c(-1,1)*(0.0151243)*qt(.975, df = 88)
gain.ci <- fit1$coefficients[2]+c(-1,1)*(0.0000777)*qt(.975, df = 88)
plot(data$gain, data$density)
abline(fit1, col = 2)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, intercept.ci[1]+gain.ci[1]*x, col = 3)
lines(x, intercept.ci[2]+gain.ci[2]*x, col = 3)
#confidence interval for 38.6
intercept.ci[1]+gain.ci[1]*38.6
intercept.ci[2]+gain.ci[2]*38.6
#confidence interval for 426.7
intercept.ci[1]+gain.ci[1]*426.7
intercept.ci[2]+gain.ci[2]*426.7

#residuals seem to be quadratic

# 4th order polynomial
density <- data$density
gain <- data$gain
gain.squared <- gain^2
gain.cubed <- gain^3
gain.4th <- gain^4
fit4 <- lm(density~gain+gain.squared+gain.cubed+gain.4th)
summary(fit4)
plot(data$gain, data$density)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit4$coefficients[1]+fit4$coefficients[2]*x+fit4$coefficients[3]*x^2+fit4$coefficients[4]*x^3+fit4$coefficients[5]*x^4, col = 2)
# resisuals look heteroscadistidistic, more so than the cubic, 
# sizes of the residiuals are about the same as the cubic,
# spread is even, suggests normality
plot(fit4$residuals)
abline(a = 0, b = 0, col = 2)
# adding bands
intercept.ci <- fit4$coefficients[1]+c(-1,1)*(5.982e-03)*qt(.975, df = 85)
gain.ci <- fit4$coefficients[2]+c(-1,1)*(2.359e-04)*qt(.975, df = 85)
gainsquared.ci <- fit4$coefficients[3]+c(-1,1)*(2.470e-06)*qt(.975, df = 85)
gaincubed.ci <- fit4$coefficients[4]+c(-1,1)*(9.132e-09)*qt(.975, df = 85)
gain4th.ci <- fit4$coefficients[5]+c(-1,1)*(1.073e-11)*qt(.975, df = 85)
plot(data$gain, data$density)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit4$coefficients[1]+fit4$coefficients[2]*x+fit4$coefficients[3]*x^2+fit4$coefficients[4]*x^3+fit4$coefficients[5]*x^4, col = 2)
lines(x, intercept.ci[1]+gain.ci[1]*x+gainsquared.ci[1]*x^2+gaincubed.ci[1]*x^3+gain4th.ci[1]*x^4)
lines(x, intercept.ci[2]+gain.ci[2]*x+gainsquared.ci[2]*x^2+gaincubed.ci[2]*x^3+gain4th.ci[2]*x^4)
#confidence interval for 38.6
fit4$coefficients[1]+fit4$coefficients[2]*38.6+fit4$coefficients[3]*38.6^2+fit4$coefficients[4]*38.6^3+fit4$coefficients[5]*38.6^4
intercept.ci[1]+gain.ci[1]*38.6+gainsquared.ci[1]*38.6^2+gaincubed.ci[1]*38.6^3+gain4th.ci[1]*38.6^4
intercept.ci[2]+gain.ci[2]*38.6+gainsquared.ci[2]*38.6^2+gaincubed.ci[2]*38.6^3+gain4th.ci[2]*38.6^4
#confidence interval for 426.7
fit4$coefficients[1]+fit4$coefficients[2]*426/7+fit4$coefficients[3]*426.7^2+fit4$coefficients[4]*426.7^3+fit4$coefficients[5]*426.7^4
intercept.ci[1]+gain.ci[1]*426.7+gainsquared.ci[1]*426.7^2+gaincubed.ci[1]*426.7^3+gain4th.ci[1]*426.7^4
intercept.ci[2]+gain.ci[2]*426.7+gainsquared.ci[2]*426.7^2+gaincubed.ci[2]*426.7^3+gain4th.ci[2]*426.7^4

#log residuals
density <- data$density
gain <- data$gain
log.gain <- log(gain)
fit5 <- lm(density~log.gain)
summary(fit5)
plot(log(data$gain), data$density)
x <- seq(from =0, to =430, length.out = 1000)
abline(fit5$coefficients[1], fit5$coefficients[2], col = 2)

plot(fit5$residuals)
abline(a=0, b=0, col = 2)
#adding bands
intercept.ci <- fit5$coefficients[1]+c(-1,1)*(0.006857)*qt(.975, df=88)
loggain.ci <- fit5$coefficients[2]+c(-1,1)*(0.001494)*qt(.975, df=88)
plot(log(data$gain), data$density, main="Log with bands")
x <- seq(from =0, to =430, length.out = 1000)
abline(a=fit5$coefficients[1], b=fit5$coefficients[2], col = 2)
abline(a=intercept.ci[1], b=loggain.ci[1])
abline(a=intercept.ci[2], b = loggain.ci[2])

#confidence interval for 38.6
intercept.ci[1]+loggain.ci[1]*log(38.6)
intercept.ci[2]+loggain.ci[2]*log(38.6)
fit5$coefficients[1]+fit5$coefficients[2]*log(38.6)
#confidence interval for 426.7
intercept.ci[1]+loggain.ci[1]*log(426.7)
intercept.ci[2]+loggain.ci[2]*log(426.7)
fit5$coefficients[1]+fit5$coefficients[2]*log(426.7)








