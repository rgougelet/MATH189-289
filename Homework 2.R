# read in data
data <- read.table("videodata.txt", header = TRUE)

library(car)
library(lattice)

# identify all NA entries, were codded as "99" ----------------------
data[data == 99] <- NA


# scenario 2 --------------------------------------------------------
## check to see how the amnt of time spent playing games in the week 
# prior to the survey compares to the reported frequency of play (daily,
# weekly, etc)

getwd()
setwd("/Users/sidneybrowne/desktop/math 189/data")

### the percent in each group who did play a game conforms to the idea that 
# more higher freq players played games that week.
## the means for each freq group conform to the idea that higher freq players 
# played for longer total amnounts of time that week.

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

## mean and std dev for time spent playing videogames by reported frequency
daily.mean <- mean(daily$time) # 4.44
daily.sd <- sd(daily$time) # 5.57

weekly.mean <- mean(weekly$time) # 2.54
weekly.sd <- sd(weekly$time) # 5.499

monthly.mean <- mean(monthly$time) # .056
monthly.sd <- sd(monthly$time) # .16

semesterly.mean <- mean(semesterly$time) # .04
semesterly.sd <- sd(semesterly$time) # .21

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

# scenario 4 --------------------------------------------------------
data <- read.table("videodata.txt", header = TRUE)

# identify all NA entries
data[data == 99] <- NA
#data$like[data$like == 1] <- NA #only one part never played

# Factor data
data$like <- recode(data$like, "1=5") # assume never played ~= not at all
fact_like <- factor(data$like,labels = c("Very much","Somewhat", "Not Really", "Not at all"))
factor(fact_like,ordered=TRUE)
library(lattice)
barchart(table(fact_like), horizontal=FALSE)

#Chi squared test to see if not uniform
chisq.test(table(fact_like),correct=TRUE) #correction for low sample size
chisq.test(table(fact_like),correct=FALSE)

#Binary split chi squared to see if not 50/50
no_na <- data$like[!is.na(data$like)]
bin_like <- factor(no_na < 4)
chisq.test(table(bin_like),correct=TRUE) #correction for low sample size
chisq.test(table(bin_like),correct=FALSE)

#Parametric Z test
z.prop = function(x){ # this function takes a binary variable, and tests against 50/50
  x1 <- sum(x==TRUE)
  x2 <- sum(x==FALSE)
  n1 <- length(x)
  n2 <- length(x)
  numerator = (x1/n1) - (x2/n2)
  p.common = (x1+x2) / (n1+n2)
  denominator = sqrt(p.common * (1-p.common) * (1/n1 + 1/n2))
  z.prop.ris = numerator / denominator
  return(z.prop.ris)
}
z = z.prop(bin_like)
2*pnorm(-abs(z))

prop_like <- mean(as.logical(bin_like)*1)
boot.population <- rep(as.logical(bin_like)*1, length.out = 314)
length(boot.population)
set.seed(1234)
B = 5000 # the number of bootstrap samples we want
boot.sample <- array(dim = c(B, 91))
for (i in 1:B) {
  boot.sample[i, ] <- sample(boot.population, size = 91, replace = FALSE)
}

# Z statistic
boot.z <- apply(X = boot.sample, MARGIN = 1, FUN = z.prop)
hist(boot.z, breaks = 20, probability = TRUE, density = 20, col = 3, border = 3)
lines(density(boot.z, adjust = 2), col = 2)
par(pty = 's')
qqnorm(boot.z)
qqline(boot.z)
shapiro.test(boot.z)
boot.zsd <- sd(boot.z)
z + c(-1, 1)*1.96*boot.zsd

# Sample mean
library(PerformanceAnalytics)
boot.mean <- apply(X = boot.sample, MARGIN = 1, FUN = mean)
plot(ecdf(boot.mean))
lines(ecdf(rnorm(10000,mean(boot.mean), StdDev(boot.mean))))
head(boot.mean)
hist(boot.mean, probability = TRUE, density = 20, col = 3, border = 3)
lines(density(boot.mean, adjust = 2), col = 2)
par(pty = 's')
qqnorm(boot.mean)
qqline(boot.mean)
shapiro.test(boot.mean)
boot.sd <- sd(boot.mean)
prop_like + c(-1, 1)*1.96*boot.sd


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

