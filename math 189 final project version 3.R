## final project
library(readxl)

Relative_Alpha_Power_data <- read_excel("~/Desktop/math 189/final project/Relative Alpha Power_ICA.xlsx", sheet 
                                        = "Sheet1", col_names = TRUE)


### experiment time series for subjects 1 thru 36, experiments 1 thru 14 ------

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 109)]

for(subjn in subject_no){
  eval(parse(text = paste("subject_",subjn," <- t(Relative_Alpha_Power_data[",subjn,",])", sep ="")))
  eval(parse(text = paste("subject_",subjn, "<- as.numeric(subject_",subjn,"[2:3121])", sep = "")))
 
  eval(parse(text = paste("subject_",subjn,".exp_1 <- ts(as.numeric(subject_",subjn,"[1:120]), start = .5, end = 60, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_2 <- ts(as.numeric(subject_",subjn,"[121:240]), start = .5, end = 60, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_3 <- ts(as.numeric(subject_",subjn,"[241:480]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_4 <- ts(as.numeric(subject_",subjn,"[481:720]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_5 <- ts(as.numeric(subject_",subjn,"[721:961]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_6 <- ts(as.numeric(subject_",subjn,"[961:1201]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_7 <- ts(as.numeric(subject_",subjn,"[1201:1440]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_8 <- ts(as.numeric(subject_",subjn,"[1441:1680]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_9 <- ts(as.numeric(subject_",subjn,"[1681:1920]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_10 <- ts(as.numeric(subject_",subjn,"[1921:2160]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_11 <- ts(as.numeric(subject_",subjn,"[2161:2400]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_12 <- ts(as.numeric(subject_",subjn,"[2401:2640]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_13 <- ts(as.numeric(subject_",subjn,"[2641:2880]), start = .5, end = 120, frequency = 2)", sep = "")))
  eval(parse(text = paste("subject_",subjn,".exp_14 <- ts(as.numeric(subject_",subjn,"[2881:3120]), start = .5, end = 120, frequency = 2)", sep = "")))
}


### means for experiments 1 thru 14 -------------------------------------------

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 109)]
experiment_no <- 1:14

for(expn in experiment_no){
  eval(parse(text = paste("meanS.exp_",expn," <- rep(0, length(subject_no))", sep = "")))
  for(subjn in subject_no){
    eval(parse(text = paste("meanS.exp_",expn,"[",subjn,"] <- mean(subject_",subjn,".exp_",expn,")", sep = "")))
  }
  eval(parse(text = paste("mean.exp_",expn," <- mean(meanS.exp_",expn,")", sep = "")))
  eval(parse(text = paste("var.meanS.exp_",expn," <- var(meanS.exp_",expn,")", sep = "")))
}

## histograms of means for each experiment ------------------------------------

hist(meanS.exp_1)
hist(meanS.exp_2)
hist(meanS.exp_3)
hist(meanS.exp_4)
hist(meanS.exp_5)
hist(meanS.exp_6)
hist(meanS.exp_7)
hist(meanS.exp_8)
hist(meanS.exp_9)
hist(meanS.exp_10)
hist(meanS.exp_11)
hist(meanS.exp_12)
hist(meanS.exp_13)
hist(meanS.exp_14)

## organizing means by "task" baseline, 1, 2, 3, 4 ------------------------------------

meanS.baseline_open <- c(meanS.exp_1)
mean.baseline_open<- mean(meanS.baseline_open)
var.meanS.baseline_open <- var(meanS.baseline_open)

meanS.baseline_closed <- c(meanS.exp_2)
mean.baseline_closed <- mean(meanS.baseline_closed)
var.meanS.baseline_closed <- var(meanS.baseline_closed)

meanS.task_1 <- c(meanS.exp_3, meanS.exp_7, meanS.exp_11)
mean.task_1 <- mean(meanS.task_1)
var.meanS.task_1 <- var(meanS.task_1)

meanS.task_2 <- c(meanS.exp_4, meanS.exp_8, meanS.exp_12)
mean.task_2 <- mean(meanS.task_2)
var.meanS.task_2 <- var(meanS.task_2)

meanS.task_3 <- c(meanS.exp_5, meanS.exp_9, meanS.exp_13)
mean.task_3 <- mean(meanS.task_3)
var.meanS.task_3 <- var(meanS.task_3)

meanS.task_4 <- c(meanS.exp_6, meanS.exp_10, meanS.exp_14)
mean.task_4 <- mean(meanS.task_4)
var.meanS.task_4 <- var(meanS.task_4)

## Questions to ask: ----------------------------------------------------------
# what kind of distribution do the means have? are they all the same?
# Are the means the same for all groups (baselines and tasks)?
#    I think this is important to do a hypothesis test on whether or not the 
#    variances are equal, I think there is a var difference between baseline and tasks
# should an average of each individual's three task 1(2,3) means be taken before 
#    looking at the mean over subjects? And the same question for variances.
# is there a difference between task 1 ans 2, and tasks 3 and 4?
#    task 1,2 is right vs left, real vs imagined
#    task 3,4 is hands vs feet, real vs imagined

## Current observations: ------------------------------------------------------
# the mean of the average alpha power for each task were:
#     baseline open: 2.34, baseline closed: 3.21,
#     task 1: 2.60, task 2: 2.73, task 3: 2.62, task 4: 2.81
# Will need distribution and var, but looks like we could tell the difference between 
#     eyes open, closed, real task (1,3), and imaginary task (2,4).
# The variances of the samples for the average alpha power for each task were:
#     baseline open: .64, baseline closed: 1.74,
#     task 1: .86, task 2: 1.04, task 3: .87, task 4: 1.21
# The same pattern as the means occurs here, I think we can show that we can distinguish 
#     between types of experiment.

## Looking at distribution ----------------------------------------------------

hist(meanS.baseline_open)
hist(meanS.baseline_closed)
hist(meanS.task_1, breaks = 20)
hist(meanS.task_2, breaks = 20)
hist(meanS.task_3, breaks = 20)
hist(meanS.task_4, breaks = 20)

## baselines: open, closed (can see closed has larger mean than open)
qqplot(meanS.baseline_open, meanS.baseline_closed)
abline(a=0, b=1, col=2)

## real movement tasks 1,3 (very good match, distributions of reak mvmnt look alike)
qqplot(meanS.task_1, meanS.task_3)
abline(a=0, b=1, col=2)

## imaginary movement tasks 2,4 (good match distributions look alike)
qqplot(meanS.task_2, meanS.task_4)
abline(a=0, b=1, col=2)

## left vs right tasks (1,2) (fairly good match imaginary may have slightly higher mean)
qqplot(meanS.task_1, meanS.task_2)
abline(a=0, b=1, col=2)

## hands vs feet tasks (3,4) (fairly good match imaginary may have slightly higher mean)
qqplot(meanS.task_3, meanS.task_4)
abline(a=0, b=1, col=2)

### Variances experiments 1 thru 14 -------------------------------------------

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 109)]
experiment_no <- 1:14

for(expn in experiment_no){
  eval(parse(text = paste("varS.exp_",expn," <- rep(0, length(subject_no))", sep = "")))
  for(subjn in subject_no){
    eval(parse(text = paste("varS.exp_",expn,"[",subjn,"] <- var(subject_",subjn,".exp_",expn,")")))
  }
  eval(parse(text = paste("avg.var.exp_",expn," <- mean(varS.exp_",expn,")", sep = "")))
  eval(parse(text = paste("var.varS.exp_",expn," <- var(varS.exp_",expn,")", sep = "")))
}

## histograms of variances for experiments 1 thru 14 --------------------------

hist(varS.exp_1, breaks = 20)
hist(varS.exp_2, breaks = 20)
hist(varS.exp_3, breaks = 20)
hist(varS.exp_4, breaks = 20)
hist(varS.exp_5, breaks = 20)
hist(varS.exp_6, breaks = 20)
hist(varS.exp_7, breaks = 20)
hist(varS.exp_8, breaks = 20)
hist(varS.exp_9, breaks = 20)
hist(varS.exp_10, breaks = 20)
hist(varS.exp_11, breaks = 20)
hist(varS.exp_12, breaks = 20)
hist(varS.exp_13, breaks = 20)
hist(varS.exp_14, breaks = 20)

## organizing variances by "task" baseline, 1, 2, 3, 4 ------------------------------------
varS.baseline_open <- c(varS.exp_1)
var.baseline_open <- var(varS.baseline_open)
avg.var.baseline_open <- mean(varS.baseline_open)

varS.baseline_closed <- c(varS.exp_2)
var.baseline_closed <- var(varS.baseline_closed)
avg.var.baseline_closed <- mean(varS.baseline_closed)

varS.task_1 <- c(varS.exp_3, varS.exp_7, varS.exp_11)
var.task_1 <- var(varS.task_1)
avg.var.task_1 <- mean(varS.task_1)

varS.task_2 <- c(varS.exp_4, varS.exp_8, varS.exp_12)
var.task_2 <- var(varS.task_2)
avg.var.task_2 <- mean(varS.task_2)

varS.task_3 <- c(varS.exp_5, varS.exp_9, varS.exp_13)
var.task_3 <- var(varS.task_3)
avg.var.task_3 <- mean(varS.task_3)

varS.task_4 <- c(varS.exp_6, varS.exp_10, varS.exp_14)
var.task_4 <- var(varS.task_4)
avg.var.task_4 <- mean(varS.task_4)

## Questions to ask: ----------------------------------------------------------
# What kind of distribution would we use to describe the various baselines and tests?
#     Perhaps an exponential dist. for the tasks, and probablly for the baselines.
# Do they all have the same kind of distribution? (I think the tasks certinally do)
# Are the variances equal between baselines and tests? 
#     I think a hypothesis test would reject equality
# Same as means, should the vars for each person be averaged first, 
#     then a group average taken.

## Current observations: ------------------------------------------------------
# the average variance of the alpha power for each task were:
#     baseline open: 2.75, baseline closed: 3.81,
#     task 1: 4.56, task 2: 5.29, task 3: 4.62, task 4: 5.06
# looks like we could differentiate the two baselines, real and imaginary movement, but do
#     the distributions agree with that? need dists and variances.
# 



# Looking at distribution -----------------------------------------------------

hist(varS.baseline_open)
hist(varS.baseline_closed)
hist(varS.task_1, breaks = 20)
hist(varS.task_2, breaks = 20)
hist(varS.task_3, breaks = 20)
hist(varS.task_4, breaks = 20)

## baselines (a meh match, can almost see that closed variances have a higher avg than open)
qqplot(varS.baseline_open, varS.baseline_closed)
abline(a=0, b=1, col=2)

## real tasks (1,3) (a pretty good match)
qqplot(varS.task_1, varS.task_3)
abline(a=0, b=1, col=2)

# imaginary tasks (2,4) (a pretty good match)
qqplot(varS.task_2, varS.task_4)
abline(a=0, b=1, col=2)

# left vs right tests (1,2) (good below 5, then imaginary tends to have larger variances)
qqplot(varS.task_1, varS.task_2)
abline(a=0, b=1, col=2)

# hands vs feet tests (3,4) (good below 7ish, then imaginary tends to have larger variances)
qqplot(varS.task_3, varS.task_4)
abline(a=0, b=1, col=2)

# real movement vs baseline open:
#     (open,1) (bad match)
qqplot(varS.baseline_open, varS.task_1)
abline(a=0, b=1, col=2)

#     (open,3) (bad match)
qqplot(varS.baseline_open, varS.task_3)
abline(a=0, b=1, col=2)

# real movement vs baseline closed:
#     (closed,1) (bad match)
qqplot(varS.baseline_closed, varS.task_1)
abline(a=0, b=1, col=2)

#     (closed,3) (bad match)
qqplot(varS.baseline_closed, varS.task_3)
abline(a=0, b=1, col=2)

# imaginary movement vs baseline open:
#     (2,open) (bad match)
qqplot(varS.baseline_open, varS.task_2)
abline(a=0, b=1, col=2)

#     (4,open) (bad match)
qqplot(varS.baseline_open, varS.task_4)
abline(a=0, b=1, col=2)

# iamginary movement vs baseline closed:
#     (closed,2) (bad match)
qqplot(varS.baseline_closed, varS.task_2)
abline(a=0, b=1, col=2)

#     (closed,4) (bad match)
qqplot(varS.baseline_closed, varS.task_4)
abline(a=0, b=1, col=2)
