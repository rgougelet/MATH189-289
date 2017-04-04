## final project
library(readxl)

Relative_Alpha_Power_data <- read_excel("~/Desktop/math 189/final project/Relative Alpha Power.xlsx", sheet 
                                        = "Sheet1", col_names = TRUE)


### experiment time series for subjects 1 thru 36, experiments 1 thru 14 ------

subject_no <- 1:109
subject_no[-c(50, 79, 109)]

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
