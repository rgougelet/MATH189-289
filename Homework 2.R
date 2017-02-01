# read in data
getwd()
setwd("/Users/sidneybrowne/desktop/math 189/data")
data <- read.table("videodata.txt", header = TRUE)

library(car)
library(lattice)

# identify all NA entries, were codded as "99" ----------------------
data[data == 99] <- NA

# scenario 2 --------------------------------------------------------
## check to see how the amnt of time spent playing games in the week 
# prior to the survey compares to the reported frequency of play (daily,
# weekly, etc)

## Q: how might the fact that there was an exam the week prior to the survey 
# affect the estimates of scenario 1, and this comparason
### A: Because there were students in all reported frequencies of play who 
# played 0 hours the week prior to the survey it is likley that the exam caused 
# students to play less or not at all

attach(data)
# var name: time; meaning: number of hours played in the week prior to the survey
summary(time)
# var name: freq; meaning: 1 = daily, 2 = weekly, 3 = monthly, 4 = semesterly
summary(freq)

## seperate players by their reported 'freq'
data$freq <- factor(recode(data$freq, "1='daily';2='weekly';3='monthly';4='semesterly'"))
daily.ind <- which(data['freq'] == 'daily')
daily <- data[daily.ind, ]
weekly.ind <- which(data['freq'] == 'weekly')
weekly <- data[weekly.ind, ]
monthly.ind <- which(data['freq'] == 'monthly')
monthly <- data[monthly.ind, ]
semesterly.ind <- which(data['freq'] == 'semesterly')
semesterly <- data[semesterly.ind, ]

## percent who played a videogame in the week prior to the survey by reported frequency
daily0.ind <- which(daily['time'] == 0.0)
weekly0.ind <- which(weekly['time'] == 0.0)
monthly0.ind <- which(monthly['time'] == 0.0)
semesterly0.ind <- which(semesterly['time'] == 0.0)

daily.percent <- 1 - length(daily0.ind)/length(daily.ind) # 78%
weekly.percent <- 1 - length(weekly0.ind)/length(weekly.ind) # 86%
monthly.percent <- 1 - length(monthly0.ind)/length(monthly.ind) # 11%
semesterly.percent <- 1 - length(semesterly0.ind)/length(semesterly.ind) # 4.3%

## histograms of hours played by reported frequency
# break points tailored to best display data
histogram(~data$time|data$freq, breaks = c(0,.5,1.5,2.5,3.5,4.5,5.5,6,13.5,14.5,15,29.5,30))

hist(daily$time, probability = TRUE, breaks = c(0,1,2,3,4,5,6,13,14))
rug(daily$time, col = 2, ticksize = .1)
lines(density(daily$time, bw = .5))

hist(weekly$time, probability = TRUE, breaks = c(0,1,2,3,4,5,6,29,30))
rug(weekly$time, col = 2, ticksize = .1)
lines(density(weekly$time, bw = .5))

hist(monthly$time, probability = TRUE, breaks = c(0,.1,.4,.5,1,2))
rug(monthly$time, col = 2, ticksize = .1)
plot(density(monthly$time, bw = .05))

hist(semesterly$time, probability = TRUE, breaks = c(0,.05,.95,1.05))
rug(semesterly$time, col = 2, ticksize = .1)
plot(density(semesterly$time, bw = .05))

# using 'par' to hold histograms together
par(mfcol = c(2,1))
hist(daily$time, probability = TRUE, breaks = c(0,1,2,3,4,5,6,13,14),
     xlim = c(0,30))
hist(weekly$time, probability = TRUE, breaks = c(0,1,2,3,4,5,6,29,30),
     xlim = c(0,30))
par(mfcol = c(2,1))
hist(monthly$time, probability = TRUE, breaks = c(0,.1,.4,.5,1,2),
     xlim = c(0,2))
hist(semesterly$time, probability = TRUE, breaks = c(0,.05,.95,1.05),
     xlim = c(0,2))


# scenario 3 --------------------------------------------------------
## make an interval estimate for the average amount of time spent playing videogames
# in the week prior to the survey.
## keep in mind the overall shape of the sample distribution. i.e. do a simulation study
avg.time <- mean(data$time) # 1.24 hrs
std.dev.time <- sd(data$time) # 3.78
hist(data$time, probability = TRUE, breaks = c(0,1,2,3,4,5,13,14,29,30))
lines(density(data$time), col = 2)

# clearly not a normal distribution, suggests the use of bootstrap

# generate a bootstrap population
boot.pop <- rep(data$time, length.out = 314)
B = 1000
boot.sample <- array(dim = c(B,91))
for(i in 1:B){
  boot.sample[i, ] <- sample(boot.pop, size = 91, replace = FALSE)
}
boot.mean <- apply(X = boot.sample, MARGIN = 1, FUN = mean)
std.dev.boot.mean <- sd(boot.mean) # .312 use this as the sd of the sample mean
hist(boot.mean, probability = TRUE, breaks = 20)
lines(density(boot.mean), col = 2)

# is this normal?
qqnorm(boot.mean)
qqline(boot.mean, col = 2)
shapiro.test(boot.mean) # p-value = 4.949e-06, W = 0.99055 
# sample mean is a good canidate for normal approx.

# using a normal approx for a 95% CI
CI95.norm <- avg.time + c(-1,1)*qnorm(.975)*std.dev.boot.mean # .631, 1.855

# using the student t approx for a 95% CI
# investigate what the df should be, chose sample size (91) - 1
CI95.t <- avg.time + c(-1,1)*qt(.975, df = 90)*std.dev.boot.mean # .623, 1.863

# using the bootstrap distribution to get a 95% CI
CI95.boot <- quantile(boot.mean, probs = c(.025, .975)) # .59, 1.77

# all three intervals are similar to each other (because the sample mean 
# was a good canidate for a normal approx) 




    