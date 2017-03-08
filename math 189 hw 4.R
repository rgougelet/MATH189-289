### Homework no. 4: Calibrating a Snow Gauge
setwd("/Users/sidneybrowne/Desktop/math 189/data/hw 4")
data <- read.table("gauge.txt", header = T)

## data visualization -----------------------------------------------
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


### regression - linear models --------------------------------------
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

# quadratic x, x^2
density <- data$density
gain <- data$gain
gain.squared <- gain^2
fit2 <- lm(density~gain+gain.squared)
summary(fit2)
plot(data$gain, data$density)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit2$coefficients[1]+fit2$coefficients[2]*x+fit2$coefficients[3]*x^2, col = 2)
#plot(fit2)
# residuals are large, and have a weird "s" curve
plot(fit2$residuals)
abline(a = 0, b = 0, col = 2)
# adding bands
intercept.ci <- fit2$coefficients[1]+c(-1,1)*(1.110e-02)*qt(.975, df = 87)
gain.ci <- fit2$coefficients[2]+c(-1,1)*(1.549e-04)*qt(.975, df = 87)
gainsquared.ci <- fit2$coefficients[3]+c(-1,1)*(3.557e-07)*qt(.975, df = 87)
plot(data$gain, data$density)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit2$coefficients[1]+fit2$coefficients[2]*x+fit2$coefficients[3]*x^2, col = 2)
lines(x, intercept.ci[1]+gain.ci[1]*x+gainsquared.ci[1]*x^2)
lines(x, intercept.ci[2]+gain.ci[2]*x+gainsquared.ci[2]*x^2)

# cubic x, x^2, x^3
density <- data$density
gain <- data$gain
gain.squared <- gain^2
gain.cubed <- gain^3
fit3 <- lm(density~gain+gain.squared+gain.cubed)
summary(fit3)
plot(data$gain, data$density)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit3$coefficients[1]+fit3$coefficients[2]*x+fit3$coefficients[3]*x^2+fit3$coefficients[4]*x^3, col = 2)
#plot(fit3)
# resisuals still larger but are smaller than the other models,
# the spread is even suggesting normakity, and are potentially heteroscadistic
plot(fit3$residuals)
abline(a = 0, b = 0, col = 2)
# adding bands
intercept.ci <- fit3$coefficients[1]+c(-1,1)*(7.336e-03)*qt(.975, df = 86)
gain.ci <- fit3$coefficients[2]+c(-1,1)*(1.870e-04)*qt(.975, df = 86)
gainsquared.ci <- fit3$coefficients[3]+c(-1,1)*(1.071e-06)*qt(.975, df = 86)
gaincubed.ci <- fit3$coefficients[4]+c(-1,1)*(1.621e-09)*qt(.975, df = 86)
plot(data$gain, data$density)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit3$coefficients[1]+fit3$coefficients[2]*x+fit3$coefficients[3]*x^2+fit3$coefficients[4]*x^3, col = 2)
lines(x, intercept.ci[1]+gain.ci[1]*x+gainsquared.ci[1]*x^2+gaincubed.ci[1]*x^3)
lines(x, intercept.ci[2]+gain.ci[2]*x+gainsquared.ci[2]*x^2+gaincubed.ci[2]*x^3)


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
# spread is even, suggsts normality
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

# notice that increasing the degree of the regression polynomial causes the line to fit better,
# but the bands are increasingly wide for larger gains, 
# and it gets wider as the polynomial degree increases.

# what about least squares and log
density <- data$density
gain <- data$gain
log.gain <- log(gain)
fit5 <- lm(density~log.gain)
summary(fit5)
plot(log(data$gain), data$density)
x <- seq(from =0, to =430, length.out = 1000)
abline(fit5$coefficients[1], fit5$coefficients[2], col = 2)
# residuals
plot(fit5$residuals)
abline(a=0, b=0, col = 2)
# looks pretty good
# adding bands
intercept.ci <- fit5$coefficients[1]+c(-1,1)*(0.006857)*qt(.975, df=88)
loggain.ci <- fit5$coefficients[2]+c(-1,1)*(0.001494)*qt(.975, df=88)
plot(log(data$gain), data$density)
x <- seq(from =0, to =430, length.out = 1000)
abline(a=fit5$coefficients[1], b=fit5$coefficients[2], col = 2)
abline(a=intercept.ci[1], b=loggain.ci[1])
abline(a=intercept.ci[2], b = loggain.ci[2])
# this is the best fit, bands and all I've tried


### regression - quantiles ------------------------------------------
library(quantreg)
gain <- data$gain
density <- data$density
fit5.5 <- rq(gain~density, tau = .5)
summary(fit5.5)
fit5.25 <- rq(gain~density, tau = .25)
summary(fit5.25)
fit5.05 <- rq(gain~density, tau = .05)
summary(fit5.05)
fit5.75 <- rq(gain~density, tau = .75)
summary(fit5.75)
fit5.95 <- rq(gain~density, tau = .95)
summary(fit5.95)
plot(data)
abline(fit5.25, col = 2)
abline(fit5.5, col = 3)
abline(fit5.75, col = 4)
abline(fit5.05, col = 5)
abline(fit5.95, col = 6)

