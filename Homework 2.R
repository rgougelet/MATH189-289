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
## how might the fact that there was an exam the week prior to the survey 
# affect the estimates of scenario 1, and this comparason

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
hist(data$time, probability = TRUE, breaks = c(0,1,2,3,4,5,13,14,29,30))
lines(density(data$time), col = 2)
# clearly not a normal distribution, suggests the use of bootstrap



    