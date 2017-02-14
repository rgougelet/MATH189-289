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
### the Proportion in each group who did play a game conforms to the idea that 
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

## Proportion who played a videogame in the week prior to the survey by reported frequency
daily0.ind <- which(daily['time'] == 0.0)
weekly0.ind <- which(weekly['time'] == 0.0)
monthly0.ind <- which(monthly['time'] == 0.0)
semesterly0.ind <- which(semesterly['time'] == 0.0)

daily.Proportion <- 1 - length(daily0.ind)/length(daily.ind) # 78%
weekly.Proportion <- 1 - length(weekly0.ind)/length(weekly.ind) # 86%
monthly.Proportion <- 1 - length(monthly0.ind)/length(monthly.ind) # 11%
semesterly.Proportion <- 1 - length(semesterly0.ind)/length(semesterly.ind) # 4.3%

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

import_data <- function(){
  setwd("C:\\Users\\Rob\\Documents\\MATH189-289")
  data <- read.table("videodata.txt", header = TRUE)
  data[data == 99] <- NA
  like_data <- data
  like_data$like <- recode(like_data$like, "1=5") # assume never played ~= not at all
  like_data$like <- factor(like_data$like,levels=c(2,3,4,5),labels = c("Very much","Somewhat", "Not Really", "Not at all"),ordered=TRUE)
  like_data$where <- factor(recode(like_data$where,"1='Arcade';2='Home System';3='Home Computer';4='Arcade + Home Computer/System'
                                   ;5='Home Computer/System';6='Arcade + Home Computer+System'"))
  like_data$freq <- factor(recode(like_data$freq,"1='Daily';2='Weekly';3='Monthly';4='Semesterly'"))
  like_data$busy <- factor(recode(like_data$busy,"1='Plays if busy';0='Doesnt play if busy'"))
  like_data$educ <- factor(recode(like_data$educ,"1='Educational';0='Uneducational'"))
  like_data$home <- factor(recode(like_data$home,"1='Has computer at home';0='Has no computer at home'"))
  like_data$math <- factor(recode(like_data$math,"1='Hates Math';0='Likes Math'"))
  like_data$own <- factor(recode(like_data$own,"1='Has PC';0='Doesnt have PC'"))
  like_data$cdrom <- factor(recode(like_data$cdrom,"1='Has CDROM';0='Doesnt have CDROM'"))
  like_data$email <- factor(recode(like_data$email,"1='Has email';0='Doesnt have email'"))
  #like_data$grade <- factor(recode(like_data$grade,"1='Has PC';0='Doesnt have PC'"), levels = c(4,3,2,1,0), labels=c('A','B','C','D','F'), ordered=TRUE)
  like_data$grade <- factor(recode(like_data$grade,"1='Has PC';0='Doesnt have PC'"), levels = c(0,1,2,3,4), labels=c('F','D','C','B','A'), ordered=FALSE)
  like_data$sex <- factor(recode(like_data$sex,"1='Male';0='Female'"))
  return(like_data)
}

import_bin_data <- function(){
  setwd("C:\\Users\\Rob\\Documents\\MATH189-289")
  data <- read.table("videodata.txt", header = TRUE)
  data[data == 99] <- NA
  like_data <- data
  library(car)
  like_data$like <- recode(like_data$like, "1='Dislike';2='Like';3='Like';4='Dislike';5='Dislike'") # assume never played ~= not at all
  like_data$like <- factor(like_data$like)
  like_data$where <- factor(recode(like_data$where,"1='Arcade';2='Home System';3='Home Computer';4='Arcade + Home Computer/System'
                                   ;5='Home Computer/System';6='Arcade + Home Computer+System'"))
  like_data$freq <- factor(recode(like_data$freq,"1='Daily';2='Weekly';3='Monthly';4='Semesterly'"))
  like_data$busy <- factor(recode(like_data$busy,"1='Plays if busy';0='Doesnt play if busy'"))
  like_data$educ <- factor(recode(like_data$educ,"1='Educational';0='Uneducational'"))
  like_data$home <- factor(recode(like_data$home,"1='Has computer at home';0='Has no computer at home'"))
  like_data$math <- factor(recode(like_data$math,"1='Hates Math';0='Likes Math'"))
  like_data$own <- factor(recode(like_data$own,"1='Has PC';0='Doesnt have PC'"))
  like_data$cdrom <- factor(recode(like_data$cdrom,"1='Has CDROM';0='Doesnt have CDROM'"))
  like_data$email <- factor(recode(like_data$email,"1='Has email';0='Doesnt have email'"))
  #like_data$grade <- factor(recode(like_data$grade,"1='Has PC';0='Doesnt have PC'"), levels = c(4,3,2,1,0), labels=c('A','B','C','D','F'), ordered=TRUE)
  like_data$grade <- factor(recode(like_data$grade,"1='Has PC';0='Doesnt have PC'"), levels = c(0,1,2,3,4), labels=c('F','D','C','B','A'), ordered=FALSE)
  like_data$sex <- factor(recode(like_data$sex,"1='Male';0='Female'"))
  return(like_data)
}

import_grade_data <- function(){
  setwd("C:\\Users\\Rob\\Documents\\MATH189-289")
  data <- read.table("videodata.txt", header = TRUE)
  data[data == 99] <- NA
  like_data <- data
  library(car)
  like_data$like <- recode(like_data$like, "1='Dislike';2='Like';3='Like';4='Dislike';5='Dislike'") # assume never played ~= not at all
  like_data$like <- factor(like_data$like)
  like_data$where <- factor(recode(like_data$where,"1='Arcade';2='Home System';3='Home Computer';4='Arcade + Home Computer/System'
                                   ;5='Home Computer/System';6='Arcade + Home Computer+System'"))
  like_data$freq <- factor(recode(like_data$freq,"1='Daily';2='Weekly';3='Monthly';4='Semesterly'"))
  like_data$busy <- factor(recode(like_data$busy,"1='Plays if busy';0='Doesnt play if busy'"))
  like_data$educ <- factor(recode(like_data$educ,"1='Educational';0='Uneducational'"))
  like_data$home <- factor(recode(like_data$home,"1='Has computer at home';0='Has no computer at home'"))
  like_data$math <- factor(recode(like_data$math,"1='Hates Math';0='Likes Math'"))
  like_data$own <- factor(recode(like_data$own,"1='Has PC';0='Doesnt have PC'"))
  like_data$cdrom <- factor(recode(like_data$cdrom,"1='Has CDROM';0='Doesnt have CDROM'"))
  like_data$email <- factor(recode(like_data$email,"1='Has email';0='Doesnt have email'"))
  #like_data$grade <- factor(recode(like_data$grade,"1='Has PC';0='Doesnt have PC'"), levels = c(4,3,2,1,0), labels=c('A','B','C','D','F'), ordered=TRUE)
  like_data$grade <- factor(recode(like_data$grade,"1='Has PC';0='Doesnt have PC'"), levels = c(0,1,2,3,4), labels=c('<C','<C','<C','>C','>C'), ordered=FALSE)
  like_data$sex <- factor(recode(like_data$sex,"1='Male';0='Female'"))
  return(like_data)
}

# Chi square tests -----
# Bar chart
library(lattice)
barchart(table(fact_like), horizontal=FALSE,
         main = "Preference for Video Games",
         xlab = "Like", ylab = "Count")

# Chi squared test to see if not uniform
chisq.test(table(fact_like),correct=TRUE) #correction for low sample size
chisq.test(table(fact_like),correct=FALSE)

# Binary split 
no_na <- data$like[!is.na(data$like)]
bin_like <- factor(no_na > 3)
bin_like <- factor(bin_like, labels = c("Like", "Dislike"), ordered=FALSE)
barchart(table(bin_like), horizontal=FALSE,
         main = "Preference for Video Games",
         xlab = "Preference", ylab = "Count")

# chi squared to see if not 50/50
chisq.test(table(bin_like),correct=TRUE) #correction for low sample size
chisq.test(table(bin_like),correct=FALSE)

# Parametric Z test, assumes z is normally distributed
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

# Cross tabbing categorical variables for binary like --------------------------------------------------------
bin_data <- import_bin_data()

#library(vcd)
pdf("bin_xtabs.pdf", height = 10, width = 15)
bin_where = t(xtabs(~ like+where, data=bin_data, drop.unused.levels = TRUE))
bin_where <- apply(bin_where, 2, function(x){x/sum(x)})
barplot(bin_where, beside=TRUE, legend=rownames(bin_where), xlab="Likes video games", ylab="Proportion")

bin_freq = t(xtabs(~ like+freq, data=bin_data, drop.unused.levels = TRUE))
bin_freq <- apply(bin_freq, 2, function(x){x/sum(x)})
barplot(bin_freq, beside=TRUE, legend=rownames(bin_freq), xlab="Likes video games", ylab="Proportion")

bin_busy = t(xtabs(~ like+busy, data=bin_data, drop.unused.levels = TRUE))
bin_busy <- apply(bin_busy, 2, function(x){x/sum(x)})
barplot(bin_busy, beside=TRUE, legend=rownames(bin_busy), xlab="Likes video games", ylab="Proportion")

bin_educ = t(xtabs(~ like+educ, data=bin_data, drop.unused.levels = TRUE))
bin_educ <- apply(bin_educ, 2, function(x){x/sum(x)})
barplot(bin_educ, beside=TRUE, legend=rownames(bin_educ), xlab="Likes video games", ylab="Proportion")

bin_home = t(xtabs(~ like+home, data=bin_data, drop.unused.levels = TRUE))
bin_home <- apply(bin_home, 2, function(x){x/sum(x)})
barplot(bin_home, beside=TRUE, legend=rownames(bin_home), xlab="Likes video games", ylab="Proportion")

bin_math = t(xtabs(~ like+math, data=bin_data, drop.unused.levels = TRUE))
bin_math <- apply(bin_math, 2, function(x){x/sum(x)})
barplot(bin_math, beside=TRUE, legend=rownames(bin_math), xlab="Likes video games", ylab="Proportion")

bin_own = t(xtabs(~ like+own, data=bin_data, drop.unused.levels = TRUE))
bin_own <- apply(bin_own, 2, function(x){x/sum(x)})
barplot(bin_own, beside=TRUE, legend=rownames(bin_own), xlab="Likes video games", ylab="Proportion")

bin_cdrom = t(xtabs(~ like+cdrom, data=bin_data, drop.unused.levels = TRUE))
bin_cdrom <- apply(bin_cdrom, 2, function(x){x/sum(x)})
barplot(bin_cdrom, beside=TRUE, legend=rownames(bin_cdrom), xlab="Likes video games", ylab="Proportion")

bin_email = t(xtabs(~ like+email, data=bin_data, drop.unused.levels = TRUE))
bin_email <- apply(bin_email, 2, function(x){x/sum(x)})
barplot(bin_email, beside=TRUE, legend=rownames(bin_email), xlab="Likes video games", ylab="Proportion")

bin_grade = t(xtabs(~ like+grade, data=bin_data, drop.unused.levels = TRUE))
bin_grade <- apply(bin_grade, 2, function(x){x/sum(x)})
barplot(bin_grade,beside=TRUE, legend=rownames(bin_grade), xlab="Likes video games", ylab="Proportion")

bin_sex = t(xtabs(~ like+sex, data=bin_data, drop.unused.levels = TRUE))
bin_sex <- apply(bin_sex, 2, function(x){x/sum(x)})
barplot(bin_sex, beside=TRUE, legend=rownames(bin_sex), xlab="Likes video games", ylab="Proportion")
dev.off()

# Cross tabbing categorical variables for 4 level like --------------------------------------------------------
like_data <- import_data()

#library(vcd)
pdf("like_xtabs.pdf", height = 10, width = 15)
like_where = t(xtabs(~ like+where, data=like_data, drop.unused.levels = TRUE))
like_where <- apply(like_where, 2, function(x){x/sum(x)})
barplot(like_where, beside=TRUE, legend=rownames(like_where), xlab="Likes video games", ylab="Proportion")

like_freq = t(xtabs(~ like+freq, data=like_data, drop.unused.levels = TRUE))
like_freq <- apply(like_freq, 2, function(x){x/sum(x)})
barplot(like_freq, beside=TRUE, legend=rownames(like_freq), xlab="Likes video games", ylab="Proportion")

like_busy = t(xtabs(~ like+busy, data=like_data, drop.unused.levels = TRUE))
like_busy <- apply(like_busy, 2, function(x){x/sum(x)})
barplot(like_busy, beside=TRUE, legend=rownames(like_busy), xlab="Likes video games", ylab="Proportion")

like_educ = t(xtabs(~ like+educ, data=like_data, drop.unused.levels = TRUE))
like_educ <- apply(like_educ, 2, function(x){x/sum(x)})
barplot(like_educ, beside=TRUE, legend=rownames(like_educ), xlab="Likes video games", ylab="Proportion")

like_home = t(xtabs(~ like+home, data=like_data, drop.unused.levels = TRUE))
like_home <- apply(like_home, 2, function(x){x/sum(x)})
barplot(like_home, beside=TRUE, legend=rownames(like_home), xlab="Likes video games", ylab="Proportion")

like_math = t(xtabs(~ like+math, data=like_data, drop.unused.levels = TRUE))
like_math <- apply(like_math, 2, function(x){x/sum(x)})
barplot(like_math, beside=TRUE, legend=rownames(like_math), xlab="Likes video games", ylab="Proportion")

like_own = t(xtabs(~ like+own, data=like_data, drop.unused.levels = TRUE))
like_own <- apply(like_own, 2, function(x){x/sum(x)})
barplot(like_own, beside=TRUE, legend=rownames(like_own), xlab="Likes video games", ylab="Proportion")

like_cdrom = t(xtabs(~ like+cdrom, data=like_data, drop.unused.levels = TRUE))
like_cdrom <- apply(like_cdrom, 2, function(x){x/sum(x)})
barplot(like_cdrom, beside=TRUE, legend=rownames(like_cdrom), xlab="Likes video games", ylab="Proportion")

like_email = t(xtabs(~ like+email, data=like_data, drop.unused.levels = TRUE))
like_email <- apply(like_email, 2, function(x){x/sum(x)})
barplot(like_email, beside=TRUE, legend=rownames(like_email), xlab="Likes video games", ylab="Proportion")

like_grade = t(xtabs(~ like+grade, data=like_data, drop.unused.levels = TRUE))
like_grade <- apply(like_grade, 2, function(x){x/sum(x)})
barplot(like_grade, beside=TRUE,legend=rownames(like_grade), xlab="Likes video games", ylab="Proportion")

like_sex = t(xtabs(~ like+sex, data=like_data, drop.unused.levels = TRUE))
like_sex <- apply(like_sex, 2, function(x){x/sum(x)})
barplot(like_sex, beside=TRUE, legend=rownames(like_sex), xlab="Likes video games", ylab="Proportion")
dev.off()

xtabs(~like_data$sex + like_data$grade)

# Aggregate numerical data -----
agg_data <- import_data()
pdf("like_aggs.pdf", height = 5, width = 5)
plot(aggregate(time~like, data=agg_data, FUN=mean), ylab="Time Spent Playing Last Week", xlab="Preference for Video Games")
plot(aggregate(age~like, data=agg_data, FUN=mean), ylab="Age", xlab="Preference for Video Games")
plot(aggregate(work~like, data=agg_data, FUN=mean), ylab="Time Worked for Pay Last Week", xlab="Preference for Video Games")
dev.off()
pdf("bin_aggs.pdf", height = 5, width = 5)
agg_bin_data <- import_bin_data()
plot(aggregate(time~like, data=agg_bin_data, FUN=mean), ylab="Time Spent Playing Last Week", xlab="Preference for Video Games")
plot(aggregate(age~like, data=agg_bin_data, FUN=mean), ylab="Age", xlab="Preference for Video Games")
plot(aggregate(work~like, data=agg_bin_data, FUN=mean), ylab="Time Worked for Pay Last Week", xlab="Preference for Video Games")
dev.off()

t.test(time~like,data=agg_bin_data)
t.test(age~like,data=agg_bin_data)
t.test(work~like,data=agg_bin_data)

# Multinomial log regression ----
multi_data <- import_data()
pMiss <- function(x){sum(is.na(x))/length(x)*100}
apply(multi_data,2,pMiss)
apply(multi_data,1,pMiss)

library(mice)
md.pattern(multi_data)
tempData <- mice(multi_data,m=1,maxit=50,meth='pmm',seed=500)
summary(tempData)
completedData <- complete(tempData,1)

library(nnet)
completedData$prog2 <- relevel(completedData$prog, ref = "academic")
test<-multinom(like ~ ., data=completedData)
summary(test) # show results
z <- summary(test)$coefficients/summary(test)$standard.errors
p <- (1 - pnorm(abs(z), 0, 1))*2
p

exp(coef(test))

# Binomial log regression ----
bin_data <- import_bin_data()
bin_data$like <- as.numeric(bin_data$like=='Like')

int_model <- glm(like ~ 1,family=binomial(link='logit'),data=bin_data)
model <- glm(like ~ .,family=binomial(link='logit'),data=bin_data)
summary(model) # DNC

# impute data
bin_data <- import_bin_data()
bin_data$like <- as.numeric(bin_data$like=='Like')
library(mice)
md.pattern(bin_data)
tempData <- mice(bin_data,m=1,maxit=50,meth='sample',seed=500)
summary(tempData)
completedData <- complete(tempData,1)
write.csv(completedData,"imputed.csv", row.names=FALSE)
imp_data <- data.frame(read.csv("imputed.csv", header = TRUE,stringsAsFactors = TRUE))

int_model <- glm(like ~ 1,family=binomial(link='logit'),data=imp_data)
model <- glm(like ~ .,family=binomial(link='logit'),data=imp_data)
model <- glm(like ~ . + grade:. + busy:. + educ:.,family=binomial(link='logit'),data=imp_data)
summary(model)
an_res <- anova(int_model,model, test="Chisq")
an_res
an_res <- anova(model, test="Chisq")
an_res

# impute data
bin_data <- import_grade_data()
bin_data$like <- as.numeric(bin_data$like=='Like')
library(mice)
md.pattern(bin_data)
tempData <- mice(bin_data,m=1,maxit=50,meth='sample',seed=500)
summary(tempData)
completedData <- complete(tempData,1)
write.csv(completedData,"imputed.csv", row.names=FALSE)
imp_data <- data.frame(read.csv("imputed.csv", header = TRUE,stringsAsFactors = TRUE))

model <- glm(grade ~ . ,family=binomial(link='logit'),data=imp_data)
an_res <- anova(int_model,model, test="Chisq")
an_res
an_res <- anova(model, test="Chisq")
an_res


library(aod)
wald.test(b = coef(model), Sigma = vcov(model), Terms = 3:7) # overall sig of where
wald.test(b = coef(model), Sigma = vcov(model), Terms = 8:10) # freq
wald.test(b = coef(model), Sigma = vcov(model), Terms = 21:22) # grade

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


# Scenario 6 -----
grade_data <- import_data()
grades <- grade_data$grade
levels(grades) <- c("<D", "<D", "C", "B", "A")
table(grades)/length(grades)
chisq.test(table(grades), p=c(0.1,0.4,0.3,0.2),rescale.p=TRUE,correct=TRUE) #correction for low sample size
chisq.test(table(grades), p=c(0.1,0.4,0.3,0.2),correct=TRUE) #correction for low sample size
chisq.test(table(grades), p=c(0.1,0.4,0.3,0.2),correct=FALSE)

adj_grades <- grade_data$grade
levels(adj_grades) <- c("<D", "<D", "C", "B", "A")
as.numeric(adj_grades)
adj_grades <- append(adj_grades,rep(0,4))
as.numeric(adj_grades)
adj_grades<-factor(adj_grades, levels = c(0,1,2,3), labels=c("<D", "C", "B", "A"))
table(adj_grades)/length(adj_grades)
chisq.test(table(adj_grades), p=c(0.1,0.4,0.3,0.2),rescale.p=TRUE,correct=TRUE) #correction for low sample size
chisq.test(table(adj_grades), p=c(0.1,0.4,0.3,0.2),correct=TRUE) #correction for low sample size
chisq.test(table(adj_grades), p=c(0.1,0.4,0.3,0.2),correct=FALSE)


# Scen 5 -----
getwd()
data <- read.table("videodata.txt",header=TRUE)
head(data)
data[data==99] <-NA
sum(is.na(data))
attach(data)
time
time <-table(time)
time
summary(time)
summary(data$time)
a<-34/91
N=314
n=91
error<-sqrt(a*(1-a))/(sqrt(n-1))*sqrt(N-n)/sqrt(N)
left<-a-qnorm(.975)*error
right<-a+qnorm(.975)*error
time
library(ggplot2)
data$like<- as.factor(data$like)
data$sex<-as.factor(data$sex)
str(data)
like<-table(like)
like
sex<-table(sex)
sex
levels(data$like)<-c("Never","Very Much","Somewhat","Not Really","Not at All")
ggplot(data=subset(data,!is.na(like)), aes(x=like, fill=factor(sex)))+
  geom_bar(width=.5)+
  ggtitle("Male vs Female")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Like")+
  ylab("Total")+
  labs(fill="sex")
str(data)
extractlike<-function(like) {
  if (length(grep("1",like))>0) {
    return ("dislike")
  } else if (length(grep("2",like))>0) {
    return ("like")
  } else if (length(grep("3",like))>0) {
    return ("like")
  } else if (length(grep("4",like))>0) {
    return ("dislike")
  } else if (length(grep("5",like))>0) {
    return ("dislike")
  } else {
    return("dislike")
  }
  
}
preference<-NULL
for (i in 1:nrow(data)) {
  preference<-c(preference, extractlike(data[i,"like"]))
}
data<-cbind(data,preference)
data$preference<-as.factor(data$preference)
preference<-table(preference)
preference
ggplot(data= subset(data,!is.na(preference)), aes(x=preference, fill=factor(sex)))+
  geom_bar(width=0.5)+
  xlab("Preference")+
  ylab("Total")+
  labs(fill="sex")
women.like<-length(which[(data$sex==0) | (data$preference=="like")])

ggplot(data=subset(data,!is.na(sex)), aes(x=sex, fill=preference))+
  geom_bar(width=0.5)+
  ggtitle("Male vs Female")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Sex")+
  ylab("Total")+
  labs(fill="preference")

data$work[is.na(data$work)]<-0
extractwork<-function(work) {
  if (length(grep("0",work)>0)) {
    return ("none")
  } else {
    return ("worked")
  }
}
worked<-NULL
for (i in 1:nrow(data)) {
  worked<-c(worked,extractwork(data[i,"work"]))
}
data<-cbind(data,worked)
data$worked<-as.factor(data$worked)
levels(data$sex)<-c("Female", "Male")
ggplot(data, aes(x=worked, fill=preference))+
  geom_bar(width=0.5)+
  facet_wrap(~sex)+
  xlab("Worked")+
  ylab("Total")+
  labs(fill="preference")
data$own<-as.factor(data$own)
levels(data$own)<-c("No", "Yes")
ggplot(data=subset(data,!is.na(own)), aes(x=own, fill=preference))+
  geom_bar(width=.5)+
  facet_wrap(~sex)+
  ggtitle("Owns a PC")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Own")+
  ylab("Total")+
  labs(fill="preference")
levels(data$home)<-c("No", "Yes")
data$home<-as.factor(data$home)
ggplot(data=subset(data,!is.na(home)), aes(x=home, fill=preference))+
  geom_bar(width=0.5)+
  facet_wrap(~sex)+
  ggtitle("Computer at Home")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Home")+
  ylab("Total")+
  labs(fill="preference")
own<-table(own)
own
home<-table(home)
home
extractcomp<- function(home,own) {
  if (length(grep("1",home))>0) {
    return ("comp")
  } else if (length(grep("1",own))>0) {
    return ("comp")
  } else if (length(grep("0",home))>0) {
    return ("none")
  } else if (length(grep("0",own))>0) {
    return ("none")
  } else {
    return ("none")
  }
}

computer<-NULL
for (i in 1:nrow(data)) {
  computer<-c(computer,extractcomp(data[i,"own"] & data[i,"home"]))  
}
data<-cbind(data,computer)
data$computer<-as.factor(data$computer)

