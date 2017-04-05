## final project

## Relative alpha frequency ICA -----------
library(readxl)

Relative_Alpha_Power_data <- read_excel("~/Desktop/math 189/final project/Relative Alpha Power_ICA.xlsx", sheet 
                                        = "Sheet1", col_names = TRUE)


### experiment time series for subjects 1 thru 36, experiments 1 thru 14 ------

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 104, 106, 109)]

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
subject_no <- subject_no[-c(50, 79, 104, 106, 109)]
experiment_no <- 1:14

for(expn in experiment_no){
  eval(parse(text = paste("meanS.exp_",expn," <- rep(NA, length(subject_no))", sep = "")))
  for(subjn in subject_no){
    eval(parse(text = paste("meanS.exp_",expn,"[",subjn,"] <- mean(subject_",subjn,".exp_",expn,")", sep = "")))
  }
  eval(parse(text = paste("mean.exp_",expn," <- mean(meanS.exp_",expn,", na.rm = TRUE)", sep = "")))
  eval(parse(text = paste("var.meanS.exp_",expn," <- var(meanS.exp_",expn,", na.rm = TRUE)", sep = "")))
}

## histograms of means for each experiment ------------------------------------

## this is the distribution of sample means for each experiment's relative alpha power

experiment_no <- 1:14

pdf("hist_mean_relative_alpha_power.pdf", height = 11, width = 8)

par(mfrow = c(2,1))

for(expn in experiment_no){
  eval(parse(text = paste("hist(meanS.exp_",expn,", main = 'histogram for experiment ",expn,"',
                          xlab = 'mean relative alpha frequency', breaks = 20)", sep = "")))
}

dev.off()

par(mfrow = c(1,1))


## organizing means by "task" baseline, 1, 2, 3, 4 ----------------------------

meanS.baseline_open <- c(meanS.exp_1)
mean.baseline_open<- mean(meanS.baseline_open, na.rm = TRUE)
var.meanS.baseline_open <- var(meanS.baseline_open, na.rm = TRUE)

meanS.baseline_closed <- c(meanS.exp_2)
mean.baseline_closed <- mean(meanS.baseline_closed, na.rm = TRUE)
var.meanS.baseline_closed <- var(meanS.baseline_closed, na.rm = TRUE)

meanS.task_1 <- c(meanS.exp_3, meanS.exp_7, meanS.exp_11)
mean.task_1 <- mean(meanS.task_1, na.rm = TRUE)
var.meanS.task_1 <- var(meanS.task_1, na.rm = TRUE)

meanS.task_2 <- c(meanS.exp_4, meanS.exp_8, meanS.exp_12)
mean.task_2 <- mean(meanS.task_2, na.rm = TRUE)
var.meanS.task_2 <- var(meanS.task_2, na.rm = TRUE)

meanS.task_3 <- c(meanS.exp_5, meanS.exp_9, meanS.exp_13)
mean.task_3 <- mean(meanS.task_3, na.rm = TRUE)
var.meanS.task_3 <- var(meanS.task_3, na.rm = TRUE)

meanS.task_4 <- c(meanS.exp_6, meanS.exp_10, meanS.exp_14)
mean.task_4 <- mean(meanS.task_4, na.rm = TRUE)
var.meanS.task_4 <- var(meanS.task_4, na.rm = TRUE)

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

## histograms ----------

pdf("hist_mean_relative_alpha_power_task.pdf", height = 11, width = 8)

hist(meanS.baseline_open, main = "histogram of means baseline eyes open", xlab = "mean relative alpha frequency", breaks = 20)
hist(meanS.baseline_closed, main = "histogram of means baseline eyes closed", xlab = "mean relative alpha frequency", breaks = 20)
hist(meanS.task_1, main = "histogram of means for task 1", xlab = "mean relative alpha frequency", breaks = 20)
hist(meanS.task_2, main = "histogram of means for task 2", xlab = "mean relative alpha frequency", breaks = 20)
hist(meanS.task_3, main = "histogram of means for task 3", xlab = "mean relative alpha frequency", breaks = 20)
hist(meanS.task_4, main = "histogram of means for task 4", xlab = "mean relative alpha frequency", breaks = 20)

dev.off()

## qq plots ----------

pdf("qqplot_mean_relative_alpha_power_task.pdf", height = 11, width = 8)

## baselines: open, closed (can see closed has larger mean than open)
qqplot(meanS.baseline_open, meanS.baseline_closed, main = "comparing baselines (mean)",
       xlab = "baseline open", ylab = "baseline closed")
abline(a=0, b=1, col=2)

## real movement tasks 1,3 (very good match, distributions of reak mvmnt look alike)
qqplot(meanS.task_1, meanS.task_3, main = "comparing real movement tasks (mean)",
       xlab = "task 1", ylab = "task 3")
abline(a=0, b=1, col=2)

## imaginary movement tasks 2,4 (good match distributions look alike)
qqplot(meanS.task_2, meanS.task_4, main = "comparing imaginary movement tasks (mean)",
       xlab = "task 2", ylab = "task 4")
abline(a=0, b=1, col=2)

## left vs right tasks (1,2) (fairly good match imaginary may have slightly higher mean)
qqplot(meanS.task_1, meanS.task_2, main = "comparing left vs right tasks (mean)",
       xlab = "task 1 (real)", ylab = "task 2 (imaginary)")
abline(a=0, b=1, col=2)

## hands vs feet tasks (3,4) (fairly good match imaginary may have slightly higher mean)
qqplot(meanS.task_3, meanS.task_4, main = "comparing hands vs feet tasks (mean)",
       xlab = "task 3 (real)", ylab = "task 4 (imaginary)")
abline(a=0, b=1, col=2)

dev.off()

### Variances experiments 1 thru 14 -------------------------------------------

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 104, 106, 109)]
experiment_no <- 1:14

for(expn in experiment_no){
  eval(parse(text = paste("varS.exp_",expn," <- rep(NA, length(subject_no))", sep = "")))
  for(subjn in subject_no){
    eval(parse(text = paste("varS.exp_",expn,"[",subjn,"] <- var(subject_",subjn,".exp_",expn,")", sep = "")))
  }
  eval(parse(text = paste("avg.var.exp_",expn," <- mean(varS.exp_",expn,", na.rm = TRUE)", sep = "")))
  eval(parse(text = paste("var.varS.exp_",expn," <- var(varS.exp_",expn,", na.rm = TRUE)", sep = "")))
}

## histograms of variances for experiments 1 thru 14 --------------------------

experiment_no <- 1:14

pdf("hist_var_relative_alpha_power.pdf", height = 11, width = 8)

par

for(expn in experiment_no){
  eval(parse(text = paste("hist(varS.exp_",expn,", main = 'histogram for experiment ",expn,"',
                          xlab = 'variance of relative alpha frequency', breaks = 20)", sep = "")))
}

dev.off()


## organizing variances by "task" baseline, 1, 2, 3, 4 ------------------------------------
varS.baseline_open <- c(varS.exp_1)
var.baseline_open <- var(varS.baseline_open, na.rm = TRUE)
avg.var.baseline_open <- mean(varS.baseline_open, na.rm = TRUE)

varS.baseline_closed <- c(varS.exp_2)
var.baseline_closed <- var(varS.baseline_closed, na.rm = TRUE)
avg.var.baseline_closed <- mean(varS.baseline_closed, na.rm = TRUE)

varS.task_1 <- c(varS.exp_3, varS.exp_7, varS.exp_11)
var.task_1 <- var(varS.task_1, na.rm = TRUE)
avg.var.task_1 <- mean(varS.task_1, na.rm = TRUE)

varS.task_2 <- c(varS.exp_4, varS.exp_8, varS.exp_12)
var.task_2 <- var(varS.task_2, na.rm = TRUE)
avg.var.task_2 <- mean(varS.task_2, na.rm = TRUE)

varS.task_3 <- c(varS.exp_5, varS.exp_9, varS.exp_13)
var.task_3 <- var(varS.task_3, na.rm = TRUE)
avg.var.task_3 <- mean(varS.task_3, na.rm = TRUE)

varS.task_4 <- c(varS.exp_6, varS.exp_10, varS.exp_14)
var.task_4 <- var(varS.task_4, na.rm = TRUE)
avg.var.task_4 <- mean(varS.task_4, na.rm = TRUE)

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

pdf("hist_var_relative_alpha_power_ task.pdf", height = 11, width = 8)

hist(varS.baseline_open, main = "histogram of variances for baseline eyes open", xlab = 'variance of relative alpha frequency', breaks = 20)
hist(varS.baseline_closed, main = "histogram of variances for baseline eyes closed", xlab = 'variance of relative alpha frequency', breaks = 20)
hist(varS.task_1, main = "histogram of variances for task 1", xlab = 'variance of relative alpha frequency', breaks = 20)
hist(varS.task_2, main = "histogram of variances for task 2", xlab = 'variance of relative alpha frequency', breaks = 20)
hist(varS.task_3, main = "histogram of variances for task 3", xlab = 'variance of relative alpha frequency', breaks = 20)
hist(varS.task_4, main = "histogram of variances for task 4", xlab = 'variance of relative alpha frequency', breaks = 20)

dev.off()

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

## boxplots for the distribution of alpha power for each exp -------------------

## each subject gets own plot
## each experiment gets its own boxplot

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 104, 106, 109)]

pdf("bplots_relative_alpha_power_2.pdf", height = 11, width = 8)

par(mfrow = c(3,1))

for(subjn in subject_no){
  eval(parse(text = paste("boxplot(subject_",subjn,".exp_1, subject_",subjn,".exp_2, subject_",subjn,".exp_3,
          subject_",subjn,".exp_4, subject_",subjn,".exp_5, subject_",subjn,".exp_6,
          subject_",subjn,".exp_7, subject_",subjn,".exp_8, subject_",subjn,".exp_9,
          subject_",subjn,".exp_10, subject_",subjn,".exp_11, subject_",subjn,".exp_12,
          subject_",subjn,".exp_13, subject_",subjn,".exp_14, main = 'subject ",subjn,"', 
                          xlab = 'experiment number',ylab = 'relative alpha power')", sep = "")))
}

dev.off()

par(mfrow = c(1,1))

## boxplots for sample means 
## each experiment gets own boxplot

boxplot(meanS.exp_1, meanS.exp_2, meanS.exp_3, meanS.exp_4, meanS.exp_5, meanS.exp_6, meanS.exp_7,
        meanS.exp_8, meanS.exp_9, meanS.exp_10, meanS.exp_11, meanS.exp_12, meanS.exp_13, meanS.exp_14,
        main = "distribution of sample means", xlab = 'experiment number',ylab = 'average relative alpha frequency')

## boxplots for sample variances
## each experiment gets own boxplot

boxplot(meanS.exp_1, varS.exp_2, varS.exp_3, varS.exp_4, varS.exp_5, varS.exp_6, varS.exp_7,
        varS.exp_8, varS.exp_9, varS.exp_10, varS.exp_11, varS.exp_12, varS.exp_13, varS.exp_14,
        main = "distribution of sample variances", xlab = 'experiment number',ylab = 'variance of relative alpha frequency')


## analysis of variance ---------------

means <- c(meanS.exp_1, meanS.exp_2, meanS.exp_3, meanS.exp_4, meanS.exp_5, meanS.exp_6, meanS.exp_7,
           meanS.exp_8, meanS.exp_9, meanS.exp_10, meanS.exp_11, meanS.exp_12, meanS.exp_13, meanS.exp_14)

experiment <- c(rep(1, length(meanS.exp_1)), rep(2, length(meanS.exp_1)), rep(3, length(meanS.exp_1)),
                rep(4, length(meanS.exp_1)), rep(5, length(meanS.exp_1)), rep(6, length(meanS.exp_1)),
                rep(7, length(meanS.exp_1)), rep(8, length(meanS.exp_1)), rep(9, length(meanS.exp_1)),
                rep(10, length(meanS.exp_1)), rep(11, length(meanS.exp_1)), rep(12, length(meanS.exp_1)),
                rep(13, length(meanS.exp_1)), rep(14, length(meanS.exp_1)))

sample_means_df <- cbind(means, experiment)
sample_means_df <- as.data.frame(sample_means_df)
sample_means_df$experiment <- factor(sample_means_df$experiment)

model <- lm(means ~ experiment, data = sample_means_df)

anova(model)

pairwise.t.test(sample_means_df$means, sample_means_df$experiment, p.adj = "bonferroni")
## pairs with a statistically significant difference: 1 and 1, 12, 14; 2 and everything execpt 12, 14;
## there were no other statistically significant pairs

## peak alpha frequency ICA -------

library(readxl)
peak_alpha_frequency_data <- read_excel("~/Desktop/math 189/final project/PAF_ICA.xlsx", sheet 
                                        = "Sheet1", col_names = TRUE) 

## experiment time series for subjects 1 thru 36, experiments 1 thru 14 ------

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 104, 106, 109)]

for(subjn in subject_no){
  eval(parse(text = paste("subject_",subjn," <- t(peak_alpha_frequency_data[",subjn,",])", sep ="")))
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
subject_no <- subject_no[-c(50, 79, 104, 106, 109)]
experiment_no <- 1:14

for(expn in experiment_no){
  eval(parse(text = paste("meanS.exp_",expn," <- rep(NA, length(subject_no))", sep = "")))
  for(subjn in subject_no){
    eval(parse(text = paste("meanS.exp_",expn,"[",subjn,"] <- mean(subject_",subjn,".exp_",expn,")", sep = "")))
  }
  eval(parse(text = paste("mean.exp_",expn," <- mean(meanS.exp_",expn,", na.rm = TRUE)", sep = "")))
  eval(parse(text = paste("var.meanS.exp_",expn," <- var(meanS.exp_",expn,", na.rm = TRUE)", sep = "")))
}

### Variances experiments 1 thru 14 -------------------------------------------

subject_no <- 1:109
subject_no <- subject_no[-c(50, 79, 104, 106, 109)]
experiment_no <- 1:14

for(expn in experiment_no){
  eval(parse(text = paste("varS.exp_",expn," <- rep(NA, length(subject_no))", sep = "")))
  for(subjn in subject_no){
    eval(parse(text = paste("varS.exp_",expn,"[",subjn,"] <- var(subject_",subjn,".exp_",expn,")", sep = "")))
  }
  eval(parse(text = paste("avg.var.exp_",expn," <- mean(varS.exp_",expn,", na.rm = TRUE)", sep = "")))
  eval(parse(text = paste("var.varS.exp_",expn," <- var(varS.exp_",expn,", na.rm = TRUE)", sep = "")))
}

## box plots ---------

## boxplots for sample means 
## each experiment gets own boxplot

boxplot(meanS.exp_1, meanS.exp_2, meanS.exp_3, meanS.exp_4, meanS.exp_5, meanS.exp_6, meanS.exp_7,
        meanS.exp_8, meanS.exp_9, meanS.exp_10, meanS.exp_11, meanS.exp_12, meanS.exp_13, meanS.exp_14,
        main = "distribution of sample means", xlab = 'experiment number',ylab = 'average peak alpha frequency')

## boxplots for sample variances
## each experiment gets own boxplot

boxplot(meanS.exp_1, varS.exp_2, varS.exp_3, varS.exp_4, varS.exp_5, varS.exp_6, varS.exp_7,
        varS.exp_8, varS.exp_9, varS.exp_10, varS.exp_11, varS.exp_12, varS.exp_13, varS.exp_14,
        main = "distribution of sample variances", xlab = 'experiment number',ylab = 'variance of peak alpha frequency')

boxplot(varS.exp_2, varS.exp_3, varS.exp_4, varS.exp_5, varS.exp_6, varS.exp_7,
        varS.exp_8, varS.exp_9, varS.exp_10, varS.exp_11, varS.exp_12, varS.exp_13, varS.exp_14,
        main = "distribution of sample variances", xlab = 'experiment number (experiment 1 excluded)',ylab = 'variance of peak alpha frequency')

means <- c(meanS.exp_1, meanS.exp_2, meanS.exp_3, meanS.exp_4, meanS.exp_5, meanS.exp_6, meanS.exp_7,
           meanS.exp_8, meanS.exp_9, meanS.exp_10, meanS.exp_11, meanS.exp_12, meanS.exp_13, meanS.exp_14)

experiment <- c(rep(1, length(meanS.exp_1)), rep(2, length(meanS.exp_1)), rep(3, length(meanS.exp_1)),
                rep(4, length(meanS.exp_1)), rep(5, length(meanS.exp_1)), rep(6, length(meanS.exp_1)),
                rep(7, length(meanS.exp_1)), rep(8, length(meanS.exp_1)), rep(9, length(meanS.exp_1)),
                rep(10, length(meanS.exp_1)), rep(11, length(meanS.exp_1)), rep(12, length(meanS.exp_1)),
                rep(13, length(meanS.exp_1)), rep(14, length(meanS.exp_1)))

sample_means_df <- cbind(means, experiment)
sample_means_df <- as.data.frame(sample_means_df)
sample_means_df$experiment <- factor(sample_means_df$experiment)

model <- lm(means ~ experiment, data = sample_means_df)

anova(model)

pairwise.t.test(sample_means_df$means, sample_means_df$experiment, p.adj = "bonferroni")

