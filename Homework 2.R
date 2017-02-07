# read in data
data <- read.table("videodata.txt", header = TRUE)

library(car)
library(lattice)

# identify all NA entries, were codded as "99" ----------------------
data[data == 99] <- NA


# scenario 2 --------------------------------------------------------
setwd("/Users/sidneybrowne/desktop/math 189/data")

## check to see how the amnt of time spent playing games in the week 
# prior to the survey compares to the reported frequency of play (daily,
# weekly, etc)
## 
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
hist(daily$time, probability = TRUE, breaks = c(0,1,2,3,4,5,6,13,14),
     xlim = c(0,30), main = "Histogram of video game time - daily players",
     xlab = "hours")
lines(density(daily$time, bw = .5), col = 2)

hist(weekly$time, probability = TRUE, breaks = c(0,1,2,3,4,5,6,29,30),
     xlim = c(0,30), main = "Histogram of video game time - weekly players",
     xlab = "hours")
lines(density(weekly$time, bw = .5), col = 2)

hist(monthly$time, probability = TRUE, breaks = c(0,.1,.4,.5,1),
     xlim = c(0,1), main = "Histogram of video game time - monthly players",
     xlab = "hours")
lines(density(monthly$time, bw = .05), col = 2)

hist(semesterly$time, probability = TRUE, breaks = c(0,.1,.4,.5,.9,1),
     xlim = c(0,1), main = "Histogram of video game time - semesterly players",
     xlab = "hours")
lines(density(semesterly$time, bw = .05), col = 2)


# scenario 4 --------------------------------------------------------
setwd("C:\Users\Rob\Documents\MATH189-289")
data <- read.table("videodata.txt", header = TRUE)

# identify all NA entries
data[data == 99] <- NA
#data$like[data$like == 1] <- NA #only one part never played

# Factor data
library(car)
data$like <- recode(data$like, "1=5") # assume never played ~= not at all
fact_like <- factor(data$like,labels = c("Very much","Somewhat", "Not Really", "Not at all"))
factor(fact_like,ordered=TRUE)
library(lattice)
barchart(table(fact_like), horizontal=FALSE,
         main = "Preference for Video Games",
         xlab = "Like", ylab = "Count")

#Chi squared test to see if not uniform
chisq.test(table(fact_like),correct=TRUE) #correction for low sample size
chisq.test(table(fact_like),correct=FALSE)

#Binary split 
no_na <- data$like[!is.na(data$like)]
bin_like <- factor(no_na > 3)
bin_like <- factor(bin_like, labels = c("Like", "Dislike"), ordered=FALSE)
barchart(table(bin_like), horizontal=FALSE,
         main = "Preference for Video Games",
         xlab = "Preference", ylab = "Count")

#chi squared to see if not 50/50
chisq.test(table(bin_like),correct=TRUE) #correction for low sample size
chisq.test(table(bin_like),correct=FALSE)

#Parametric Z test, assumes z is normally distributed
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

z.prop2 = function(x){ # this function takes a binary variable, and tests against 50/50
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
2*pnorm(-abs(z)) # assumption is relevant here

# Bootstrap
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

# Cross tabbing

library(grid)
library(gridExtra)
like_data <- data
like_data$like <- fact_like
like_educ <- xtabs(~ like+educ, data=like_data)
#colnames(like_educ) = c("blah","blah")
like_educ
grid.table(like_educ)
aggregate(like ~ ., data=like_data, FUN=mean)

bin_data <- data
bin_data$bin <- fact_bin

grid.table(aggregate(wt ~smoke, data=dat, FUN=mean))
pairs(bin_like)
fit <- lm(wt ~ ., data=dat)
fit <- lm(gestation ~ ., data=dat)
summary(fit) # show results


# scenario 3 --------------------------------------------------------
## make an interval estimate for the average amount of time spent playing videogames
# in the week prior to the survey.
## keep in mind the overall shape of the sample distribution. i.e. do a simulation study
avg.time <- mean(data$time) # 1.24 hrs
std.dev.time <- sd(data$time) # 3.78 hrs
hist(data$time, probability = TRUE, breaks = c(0,1,2,3,4,5,13,14,29,30),
     main = "Histogram of time spent playing video games", xlab = "hours")
lines(density(data$time), col = 2)

# clearly not a normal distribution, suggests the use of bootstrap

# generate a bootstrap population
N = 314 # population size
n = 91 # sample size
boot.pop <- rep(data$time, length.out = N)
B = 5000
boot.sample <- array(dim = c(B,n))
for(i in 1:B){
  boot.sample[i, ] <- sample(boot.pop, size = n, replace = FALSE)
}
boot.mean <- apply(X = boot.sample, MARGIN = 1, FUN = mean)
avg.boot.mean <- mean(boot.mean)
std.dev.boot.mean <- sd(boot.mean) # use this as the sd of the sample mean
hist(boot.mean, probability = TRUE, breaks = 20,
     main = "Histogram of bootstrap sample means", xlab = "hours")
lines(density(boot.mean), col = 2)
lines(density())

# is this normal?
qqnorm(boot.mean, ylab = "bootstrap sample mean quantiles",
       main = "Normal Q-Q Plot - bootstrap sample means")
qqline(boot.mean, col = 2)

# using a normal approx for a 95% CI for the mean, using the bootstrap mean and sd
CI.95.norm <- avg.boot.mean + c(-1,1)*qnorm(.975)*std.dev.boot.mean  
CI.95.norm.width <- qnorm(.975)*std.dev.boot.mean

# using the bootstrap distribution to get a 95% CI for the mean
boot.mean.ord <- sort(boot.mean)
CI.95.boot <- c(boot.mean.ord[floor(.025*B)], boot.mean.ord[ceiling(.975*B)])
CI.95.boot.lowerwidth <- avg.boot.mean - boot.mean.ord[floor(.025*B)]
CI.95.boot.upperwidth <- boot.mean.ord[ceiling(.975*B)] - avg.boot.mean

# both intervals are similar to each other (because the sample mean 
# was a good canidate for a normal approx) 

