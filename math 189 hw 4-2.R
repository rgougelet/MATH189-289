### Homework no. 4: Calibrating a Snow Gauge - stuff used
setwd("/Users/sidneybrowne/Desktop/math 189/data/hw 4")
data <- read.table("gauge.txt", header = T)

### regression - polynomials ----------------------------------------

# linear x
fit1 <- lm(density~gain, data = data)
summary(fit1)
## just the reg line
plot(data$gain, data$density, xlab = "gain", ylab = "density",
     main = "Model: density = b_0 + b_1 * gain")
abline(fit1, col = 2)
#plot(fit1)
# residuals are very large, and suggest a quadratic trend
plot(x = fit1$fitted.values, y = fit1$residuals, ylab = "residuals", xlab = "fitted densities",
     main = "Model: density = b_0 + b_1 * gain")
abline(a = 0, b = 0, col = 2)

# adding bands
intercept.ci <- fit1$coefficients[1]+c(-1,1)*(0.0151243)*qt(.975, df = 88)
gain.ci <- fit1$coefficients[2]+c(-1,1)*(0.0000777)*qt(.975, df = 88)
## reg line with bands (95% ci)
plot(data$gain, data$density, xlab = "gain", ylab = "density",
     main = "Model with 95% CI: density = b_0 + b_1 * gain")
abline(fit1, col = 2)
x <- seq(from =0, to =430, length.out = 1000)
lines(x, intercept.ci[1]+gain.ci[1]*x, col = 3)
lines(x, intercept.ci[2]+gain.ci[2]*x, col = 3)

# 4th order polynomial
density <- data$density
gain <- data$gain
gain.squared <- gain^2
gain.cubed <- gain^3
gain.4th <- gain^4
fit4 <- lm(density~gain+gain.squared+gain.cubed+gain.4th)
summary(fit4)
plot(data$gain, data$density, xlab = "gain", ylab = "density",
     main = "Model: density=b_0+b_1*gain+b_2*(gain)^2+b_3*(gain)^3+b^4*(gain)^4")
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit4$coefficients[1]+fit4$coefficients[2]*x+fit4$coefficients[3]*x^2+fit4$coefficients[4]*x^3+fit4$coefficients[5]*x^4, col = 2)
# resisuals look heteroscadistidistic, more so than the cubic, 
# sizes of the residiuals are about the same as the cubic,
# spread is even, suggsts normality
plot(x = fit4$fitted.values, y = fit4$residuals, ylab = "residuals", xlab = "fitted densities",
     main = "Model: density=b_0+b_1*gain+b_2*(gain)^2+b_3*(gain)^3+b^4*(gain)^4")
abline(a = 0, b = 0, col = 2)
plot(fit4$residuals)

# adding bands
intercept.ci <- fit4$coefficients[1]+c(-1,1)*(5.982e-03)*qt(.975, df = 85)
gain.ci <- fit4$coefficients[2]+c(-1,1)*(2.359e-04)*qt(.975, df = 85)
gainsquared.ci <- fit4$coefficients[3]+c(-1,1)*(2.470e-06)*qt(.975, df = 85)
gaincubed.ci <- fit4$coefficients[4]+c(-1,1)*(9.132e-09)*qt(.975, df = 85)
gain4th.ci <- fit4$coefficients[5]+c(-1,1)*(1.073e-11)*qt(.975, df = 85)
plot(data$gain, data$density,  xlab = "gain", ylab = "density",
     main = "Model with 95% CI: density=b_0+b_1*gain+b_2*(gain)^2+b_3*(gain)^3+b^4*(gain)^4")
x <- seq(from =0, to =430, length.out = 1000)
lines(x, fit4$coefficients[1]+fit4$coefficients[2]*x+fit4$coefficients[3]*x^2+fit4$coefficients[4]*x^3+fit4$coefficients[5]*x^4, col = 2)
lines(x, intercept.ci[1]+gain.ci[1]*x+gainsquared.ci[1]*x^2+gaincubed.ci[1]*x^3+gain4th.ci[1]*x^4, col = 3)
lines(x, intercept.ci[2]+gain.ci[2]*x+gainsquared.ci[2]*x^2+gaincubed.ci[2]*x^3+gain4th.ci[2]*x^4, col = 3)


### regression - log(gain) ------------------------------------------

# what about least squares and log
density <- data$density
gain <- data$gain
log.gain <- log(gain)
fit5 <- lm(density~log.gain)
summary(fit5)
plot(log(data$gain), data$density, xlab = "log(gain)", ylab = "density",
     main = "Model: density=b_0 + b_1 * log(gain)")
x <- seq(from =0, to =430, length.out = 1000)
abline(fit5$coefficients[1], fit5$coefficients[2], col = 2)
# residuals
plot(x = fit5$fitted.values,y = fit5$residuals, xlab = "fitted densities",
     ylab = " residuals", main = "Model: density=b_0 + b_1 * log(gain)")
abline(a=0, b=0, col = 2)
# looks pretty good

# adding bands
intercept.ci <- fit5$coefficients[1]+c(-1,1)*(0.006857)*qt(.975, df=88)
loggain.ci <- fit5$coefficients[2]+c(-1,1)*(0.001494)*qt(.975, df=88)
plot(log(data$gain), data$density, xlab = "log(gain)",
     ylab = " density", main = "Model with 95% CI: density=b_0 + b_1 * log(gain)")
x <- seq(from =0, to =430, length.out = 1000)
abline(a=fit5$coefficients[1], b=fit5$coefficients[2], col = 2)
abline(a=intercept.ci[1], b=loggain.ci[1], col = 3)
abline(a=intercept.ci[2], b = loggain.ci[2], col = 3)
# this is the best fit, bands and all I've tried


### confidence intervals --------------------------------------------
### confidence intervals for gain = 38.6
## line
intercept.ci <- fit1$coefficients[1]+c(-1,1)*(0.0151243)*qt(.975, df = 88)
gain.ci <- fit1$coefficients[2]+c(-1,1)*(0.0000777)*qt(.975, df = 88)
# reg
line.regression <- fit1$coefficients[1]+fit1$coefficients[2]*(38.6)
#uppr
line.uppr <- intercept.ci[2]+gain.ci[2]*(38.6)
#lower
line.lower <- intercept.ci[1]+gain.ci[1]*(38.6)

## 4th ord
intercept.ci <- fit4$coefficients[1]+c(-1,1)*(5.982e-03)*qt(.975, df = 85)
gain.ci <- fit4$coefficients[2]+c(-1,1)*(2.359e-04)*qt(.975, df = 85)
gainsquared.ci <- fit4$coefficients[3]+c(-1,1)*(2.470e-06)*qt(.975, df = 85)
gaincubed.ci <- fit4$coefficients[4]+c(-1,1)*(9.132e-09)*qt(.975, df = 85)
gain4th.ci <- fit4$coefficients[5]+c(-1,1)*(1.073e-11)*qt(.975, df = 85)
# reg
ord4.reg <- fit4$coefficients[1]+fit4$coefficients[2]*(38.6)+fit4$coefficients[3]*(38.6)^2+fit4$coefficients[4]*(38.6)^3+fit4$coefficients[5]*(38.6)^4
# uppr
ord4.uppr <- intercept.ci[2]+gain.ci[2]*(38.6)+gainsquared.ci[2]*(38.6)^2+gaincubed.ci[2]*(38.6)^3+gain4th.ci[2]*(38.6)^4
# lower
ord4.lower <- intercept.ci[1]+gain.ci[1]*(38.6)+gainsquared.ci[1]*(38.6)^2+gaincubed.ci[1]*(38.6)^3+gain4th.ci[1]*(38.6)^4

## log
intercept.ci <- fit5$coefficients[1]+c(-1,1)*(0.006857)*qt(.975, df=88)
loggain.ci <- fit5$coefficients[2]+c(-1,1)*(0.001494)*qt(.975, df=88)
# reg
log.reg <- fit5$coefficients[1]+fit5$coefficients[2]*log(38.6)
#uppr
log.uppr <- intercept.ci[2]+loggain.ci[2]*log(38.6)
#lower
log.lower <- intercept.ci[1]+loggain.ci[1]*log(38.6)

### confidence intervals for gain = 426.7
## line - gives negative values
intercept.ci <- fit1$coefficients[1]+c(-1,1)*(0.0151243)*qt(.975, df = 88)
gain.ci <- fit1$coefficients[2]+c(-1,1)*(0.0000777)*qt(.975, df = 88)
# reg
line.regression <- fit1$coefficients[1]+fit1$coefficients[2]*(426.7)
#uppr
line.uppr <- intercept.ci[2]+gain.ci[2]*(426.7)
#lower
line.lower <- intercept.ci[1]+gain.ci[1]*(426.7)

## 4th ord
intercept.ci <- fit4$coefficients[1]+c(-1,1)*(5.982e-03)*qt(.975, df = 85)
gain.ci <- fit4$coefficients[2]+c(-1,1)*(2.359e-04)*qt(.975, df = 85)
gainsquared.ci <- fit4$coefficients[3]+c(-1,1)*(2.470e-06)*qt(.975, df = 85)
gaincubed.ci <- fit4$coefficients[4]+c(-1,1)*(9.132e-09)*qt(.975, df = 85)
gain4th.ci <- fit4$coefficients[5]+c(-1,1)*(1.073e-11)*qt(.975, df = 85)
# reg
ord4.reg <- fit4$coefficients[1]+fit4$coefficients[2]*(426.7)+fit4$coefficients[3]*(426.7)^2+fit4$coefficients[4]*(426.7)^3+fit4$coefficients[5]*(426.7)^4
# uppr
ord4.uppr <- intercept.ci[2]+gain.ci[2]*(426.7)+gainsquared.ci[2]*(426.7)^2+gaincubed.ci[2]*(426.7)^3+gain4th.ci[2]*(426.7)^4
# lower
ord4.lower <- intercept.ci[1]+gain.ci[1]*(426.7)+gainsquared.ci[1]*(426.7)^2+gaincubed.ci[1]*(426.7)^3+gain4th.ci[1]*(426.7)^4

## log
intercept.ci <- fit5$coefficients[1]+c(-1,1)*(0.006857)*qt(.975, df=88)
loggain.ci <- fit5$coefficients[2]+c(-1,1)*(0.001494)*qt(.975, df=88)
# reg
log.reg <- fit5$coefficients[1]+fit5$coefficients[2]*log(426.7)
#uppr
log.uppr <- intercept.ci[2]+loggain.ci[2]*log(426.7)
#lower
log.lower <- intercept.ci[1]+loggain.ci[1]*log(426.7)







