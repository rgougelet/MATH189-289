## final project
library(readxl)

Relative_Alpha_Power_data <- read_excel("~/Desktop/math 189/final project/Relative Alpha Power.xlsx", sheet 
                                        = "Sheet1", col_names = TRUE)


### experiment time series for subjects 1 thru 36, experiments 1 thru 14 ------

## subject No. 1
subject_1 <- t(Relative_Alpha_Power_data[1,])
subject_1 <- as.numeric(subject_1[2:3121])

subject_1.exp_1 <- ts(as.numeric(subject_1[1:120]), start = .5, end = 60, frequency = 2)
subject_1.exp_2 <- ts(as.numeric(subject_1[121:240]), start = .5, end = 60, frequency = 2)
subject_1.exp_3 <- ts(as.numeric(subject_1[241:480]), start = .5, end = 120, frequency = 2)
subject_1.exp_4 <- ts(as.numeric(subject_1[481:720]), start = .5, end = 120, frequency = 2)
subject_1.exp_5 <- ts(as.numeric(subject_1[721:961]), start = .5, end = 120, frequency = 2)
subject_1.exp_6 <- ts(as.numeric(subject_1[961:1201]), start = .5, end = 120, frequency = 2)
subject_1.exp_7 <- ts(as.numeric(subject_1[1201:1440]), start = .5, end = 120, frequency = 2)
subject_1.exp_8 <- ts(as.numeric(subject_1[1441:1680]), start = .5, end = 120, frequency = 2)
subject_1.exp_9 <- ts(as.numeric(subject_1[1681:1920]), start = .5, end = 120, frequency = 2)
subject_1.exp_10 <- ts(as.numeric(subject_1[1921:2160]), start = .5, end = 120, frequency = 2)
subject_1.exp_11 <- ts(as.numeric(subject_1[2161:2400]), start = .5, end = 120, frequency = 2)
subject_1.exp_12 <- ts(as.numeric(subject_1[2401:2640]), start = .5, end = 120, frequency = 2)
subject_1.exp_13 <- ts(as.numeric(subject_1[2641:2880]), start = .5, end = 120, frequency = 2)
subject_1.exp_14 <- ts(as.numeric(subject_1[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 2
subject_2 <- t(Relative_Alpha_Power_data[2,])
subject_2 <- as.numeric(subject_2[2:3121])

subject_2.exp_1 <- ts(as.numeric(subject_2[1:120]), start = .5, end = 60, frequency = 2)
subject_2.exp_2 <- ts(as.numeric(subject_2[121:240]), start = .5, end = 60, frequency = 2)
subject_2.exp_3 <- ts(as.numeric(subject_2[241:480]), start = .5, end = 120, frequency = 2)
subject_2.exp_4 <- ts(as.numeric(subject_2[481:720]), start = .5, end = 120, frequency = 2)
subject_2.exp_5 <- ts(as.numeric(subject_2[721:960]), start = .5, end = 120, frequency = 2)
subject_2.exp_6 <- ts(as.numeric(subject_2[961:1200]), start = .5, end = 120, frequency = 2)
subject_2.exp_7 <- ts(as.numeric(subject_2[1201:1440]), start = .5, end = 120, frequency = 2)
subject_2.exp_8 <- ts(as.numeric(subject_2[1441:1680]), start = .5, end = 120, frequency = 2)
subject_2.exp_9 <- ts(as.numeric(subject_2[1681:1920]), start = .5, end = 120, frequency = 2)
subject_2.exp_10 <- ts(as.numeric(subject_2[1921:2160]), start = .5, end = 120, frequency = 2)
subject_2.exp_11 <- ts(as.numeric(subject_2[2161:2400]), start = .5, end = 120, frequency = 2)
subject_2.exp_12 <- ts(as.numeric(subject_2[2401:2640]), start = .5, end = 120, frequency = 2)
subject_2.exp_13 <- ts(as.numeric(subject_2[2641:2880]), start = .5, end = 120, frequency = 2)
subject_2.exp_14 <- ts(as.numeric(subject_2[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 3
subject_3 <- t(Relative_Alpha_Power_data[3,])
subject_3 <- as.numeric(subject_3[2:3121])

subject_3.exp_1 <- ts(as.numeric(subject_3[1:120]), start = .5, end = 60, frequency = 2)
subject_3.exp_2 <- ts(as.numeric(subject_3[121:240]), start = .5, end = 60, frequency = 2)
subject_3.exp_3 <- ts(as.numeric(subject_3[241:480]), start = .5, end = 120, frequency = 2)
subject_3.exp_4 <- ts(as.numeric(subject_3[481:720]), start = .5, end = 120, frequency = 2)
subject_3.exp_5 <- ts(as.numeric(subject_3[721:960]), start = .5, end = 120, frequency = 2)
subject_3.exp_6 <- ts(as.numeric(subject_3[961:1200]), start = .5, end = 120, frequency = 2)
subject_3.exp_7 <- ts(as.numeric(subject_3[1201:1440]), start = .5, end = 120, frequency = 2)
subject_3.exp_8 <- ts(as.numeric(subject_3[1441:1680]), start = .5, end = 120, frequency = 2)
subject_3.exp_9 <- ts(as.numeric(subject_3[1681:1920]), start = .5, end = 120, frequency = 2)
subject_3.exp_10 <- ts(as.numeric(subject_3[1921:2160]), start = .5, end = 120, frequency = 2)
subject_3.exp_11 <- ts(as.numeric(subject_3[2161:2400]), start = .5, end = 120, frequency = 2)
subject_3.exp_12 <- ts(as.numeric(subject_3[2401:2640]), start = .5, end = 120, frequency = 2)
subject_3.exp_13 <- ts(as.numeric(subject_3[2641:2880]), start = .5, end = 120, frequency = 2)
subject_3.exp_14 <- ts(as.numeric(subject_3[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 4
subject_4 <- t(Relative_Alpha_Power_data[4,])
subject_4 <- as.numeric(subject_4[2:3121])

subject_4.exp_1 <- ts(as.numeric(subject_4[1:120]), start = .5, end = 60, frequency = 2)
subject_4.exp_2 <- ts(as.numeric(subject_4[121:240]), start = .5, end = 60, frequency = 2)
subject_4.exp_3 <- ts(as.numeric(subject_4[241:480]), start = .5, end = 120, frequency = 2)
subject_4.exp_4 <- ts(as.numeric(subject_4[481:720]), start = .5, end = 120, frequency = 2)
subject_4.exp_5 <- ts(as.numeric(subject_4[721:960]), start = .5, end = 120, frequency = 2)
subject_4.exp_6 <- ts(as.numeric(subject_4[961:1200]), start = .5, end = 120, frequency = 2)
subject_4.exp_7 <- ts(as.numeric(subject_4[1201:1440]), start = .5, end = 120, frequency = 2)
subject_4.exp_8 <- ts(as.numeric(subject_4[1441:1680]), start = .5, end = 120, frequency = 2)
subject_4.exp_9 <- ts(as.numeric(subject_4[1681:1920]), start = .5, end = 120, frequency = 2)
subject_4.exp_10 <- ts(as.numeric(subject_4[1921:2160]), start = .5, end = 120, frequency = 2)
subject_4.exp_11 <- ts(as.numeric(subject_4[2161:2400]), start = .5, end = 120, frequency = 2)
subject_4.exp_12 <- ts(as.numeric(subject_4[2401:2640]), start = .5, end = 120, frequency = 2)
subject_4.exp_13 <- ts(as.numeric(subject_4[2641:2880]), start = .5, end = 120, frequency = 2)
subject_4.exp_14 <- ts(as.numeric(subject_4[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 5
subject_5 <- t(Relative_Alpha_Power_data[5,])
subject_5 <- as.numeric(subject_5[2:3121])

subject_5.exp_1 <- ts(as.numeric(subject_5[1:120]), start = .5, end = 60, frequency = 2)
subject_5.exp_2 <- ts(as.numeric(subject_5[121:240]), start = .5, end = 60, frequency = 2)
subject_5.exp_3 <- ts(as.numeric(subject_5[241:480]), start = .5, end = 120, frequency = 2)
subject_5.exp_4 <- ts(as.numeric(subject_5[481:720]), start = .5, end = 120, frequency = 2)
subject_5.exp_5 <- ts(as.numeric(subject_5[721:960]), start = .5, end = 120, frequency = 2)
subject_5.exp_6 <- ts(as.numeric(subject_5[961:1200]), start = .5, end = 120, frequency = 2)
subject_5.exp_7 <- ts(as.numeric(subject_5[1201:1440]), start = .5, end = 120, frequency = 2)
subject_5.exp_8 <- ts(as.numeric(subject_5[1441:1680]), start = .5, end = 120, frequency = 2)
subject_5.exp_9 <- ts(as.numeric(subject_5[1681:1920]), start = .5, end = 120, frequency = 2)
subject_5.exp_10 <- ts(as.numeric(subject_5[1921:2160]), start = .5, end = 120, frequency = 2)
subject_5.exp_11 <- ts(as.numeric(subject_5[2161:2400]), start = .5, end = 120, frequency = 2)
subject_5.exp_12 <- ts(as.numeric(subject_5[2401:2640]), start = .5, end = 120, frequency = 2)
subject_5.exp_13 <- ts(as.numeric(subject_5[2641:2880]), start = .5, end = 120, frequency = 2)
subject_5.exp_14 <- ts(as.numeric(subject_5[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 6
subject_6 <- t(Relative_Alpha_Power_data[6,])
subject_6 <- as.numeric(subject_6[2:3121])

subject_6.exp_1 <- ts(as.numeric(subject_6[1:120]), start = .5, end = 60, frequency = 2)
subject_6.exp_2 <- ts(as.numeric(subject_6[121:240]), start = .5, end = 60, frequency = 2)
subject_6.exp_3 <- ts(as.numeric(subject_6[241:480]), start = .5, end = 120, frequency = 2)
subject_6.exp_4 <- ts(as.numeric(subject_6[481:720]), start = .5, end = 120, frequency = 2)
subject_6.exp_5 <- ts(as.numeric(subject_6[721:960]), start = .5, end = 120, frequency = 2)
subject_6.exp_6 <- ts(as.numeric(subject_6[961:1200]), start = .5, end = 120, frequency = 2)
subject_6.exp_7 <- ts(as.numeric(subject_6[1201:1440]), start = .5, end = 120, frequency = 2)
subject_6.exp_8 <- ts(as.numeric(subject_6[1441:1680]), start = .5, end = 120, frequency = 2)
subject_6.exp_9 <- ts(as.numeric(subject_6[1681:1920]), start = .5, end = 120, frequency = 2)
subject_6.exp_10 <- ts(as.numeric(subject_6[1921:2160]), start = .5, end = 120, frequency = 2)
subject_6.exp_11 <- ts(as.numeric(subject_6[2161:2400]), start = .5, end = 120, frequency = 2)
subject_6.exp_12 <- ts(as.numeric(subject_6[2401:2640]), start = .5, end = 120, frequency = 2)
subject_6.exp_13 <- ts(as.numeric(subject_6[2641:2880]), start = .5, end = 120, frequency = 2)
subject_6.exp_14 <- ts(as.numeric(subject_6[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 7
subject_7 <- t(Relative_Alpha_Power_data[7,])
subject_7 <- as.numeric(subject_7[2:3121])

subject_7.exp_1 <- ts(as.numeric(subject_7[1:120]), start = .5, end = 60, frequency = 2)
subject_7.exp_2 <- ts(as.numeric(subject_7[121:240]), start = .5, end = 60, frequency = 2)
subject_7.exp_3 <- ts(as.numeric(subject_7[241:480]), start = .5, end = 120, frequency = 2)
subject_7.exp_4 <- ts(as.numeric(subject_7[481:720]), start = .5, end = 120, frequency = 2)
subject_7.exp_5 <- ts(as.numeric(subject_7[721:960]), start = .5, end = 120, frequency = 2)
subject_7.exp_6 <- ts(as.numeric(subject_7[961:1200]), start = .5, end = 120, frequency = 2)
subject_7.exp_7 <- ts(as.numeric(subject_7[1201:1440]), start = .5, end = 120, frequency = 2)
subject_7.exp_8 <- ts(as.numeric(subject_7[1441:1680]), start = .5, end = 120, frequency = 2)
subject_7.exp_9 <- ts(as.numeric(subject_7[1681:1920]), start = .5, end = 120, frequency = 2)
subject_7.exp_10 <- ts(as.numeric(subject_7[1921:2160]), start = .5, end = 120, frequency = 2)
subject_7.exp_11 <- ts(as.numeric(subject_7[2161:2400]), start = .5, end = 120, frequency = 2)
subject_7.exp_12 <- ts(as.numeric(subject_7[2401:2640]), start = .5, end = 120, frequency = 2)
subject_7.exp_13 <- ts(as.numeric(subject_7[2641:2880]), start = .5, end = 120, frequency = 2)
subject_7.exp_14 <- ts(as.numeric(subject_7[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 8
subject_8 <- t(Relative_Alpha_Power_data[8,])
subject_8 <- as.numeric(subject_8[2:3121])

subject_8.exp_1 <- ts(as.numeric(subject_8[1:120]), start = .5, end = 60, frequency = 2)
subject_8.exp_2 <- ts(as.numeric(subject_8[121:240]), start = .5, end = 60, frequency = 2)
subject_8.exp_3 <- ts(as.numeric(subject_8[241:480]), start = .5, end = 120, frequency = 2)
subject_8.exp_4 <- ts(as.numeric(subject_8[481:720]), start = .5, end = 120, frequency = 2)
subject_8.exp_5 <- ts(as.numeric(subject_8[721:960]), start = .5, end = 120, frequency = 2)
subject_8.exp_6 <- ts(as.numeric(subject_8[961:1200]), start = .5, end = 120, frequency = 2)
subject_8.exp_7 <- ts(as.numeric(subject_8[1201:1440]), start = .5, end = 120, frequency = 2)
subject_8.exp_8 <- ts(as.numeric(subject_8[1441:1680]), start = .5, end = 120, frequency = 2)
subject_8.exp_9 <- ts(as.numeric(subject_8[1681:1920]), start = .5, end = 120, frequency = 2)
subject_8.exp_10 <- ts(as.numeric(subject_8[1921:2160]), start = .5, end = 120, frequency = 2)
subject_8.exp_11 <- ts(as.numeric(subject_8[2161:2400]), start = .5, end = 120, frequency = 2)
subject_8.exp_12 <- ts(as.numeric(subject_8[2401:2640]), start = .5, end = 120, frequency = 2)
subject_8.exp_13 <- ts(as.numeric(subject_8[2641:2880]), start = .5, end = 120, frequency = 2)
subject_8.exp_14 <- ts(as.numeric(subject_8[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 9
subject_9 <- t(Relative_Alpha_Power_data[9,])
subject_9 <- as.numeric(subject_9[2:3121])

subject_9.exp_1 <- ts(as.numeric(subject_9[1:120]), start = .5, end = 60, frequency = 2)
subject_9.exp_2 <- ts(as.numeric(subject_9[121:240]), start = .5, end = 60, frequency = 2)
subject_9.exp_3 <- ts(as.numeric(subject_9[241:480]), start = .5, end = 120, frequency = 2)
subject_9.exp_4 <- ts(as.numeric(subject_9[481:720]), start = .5, end = 120, frequency = 2)
subject_9.exp_5 <- ts(as.numeric(subject_9[721:960]), start = .5, end = 120, frequency = 2)
subject_9.exp_6 <- ts(as.numeric(subject_9[961:1200]), start = .5, end = 120, frequency = 2)
subject_9.exp_7 <- ts(as.numeric(subject_9[1201:1440]), start = .5, end = 120, frequency = 2)
subject_9.exp_8 <- ts(as.numeric(subject_9[1441:1680]), start = .5, end = 120, frequency = 2)
subject_9.exp_9 <- ts(as.numeric(subject_9[1681:1920]), start = .5, end = 120, frequency = 2)
subject_9.exp_10 <- ts(as.numeric(subject_9[1921:2160]), start = .5, end = 120, frequency = 2)
subject_9.exp_11 <- ts(as.numeric(subject_9[2161:2400]), start = .5, end = 120, frequency = 2)
subject_9.exp_12 <- ts(as.numeric(subject_9[2401:2640]), start = .5, end = 120, frequency = 2)
subject_9.exp_13 <- ts(as.numeric(subject_9[2641:2880]), start = .5, end = 120, frequency = 2)
subject_9.exp_14 <- ts(as.numeric(subject_9[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 10
subject_10 <- t(Relative_Alpha_Power_data[10,])
subject_10 <- as.numeric(subject_10[2:3121])

subject_10.exp_1 <- ts(as.numeric(subject_10[1:120]), start = .5, end = 60, frequency = 2)
subject_10.exp_2 <- ts(as.numeric(subject_10[121:240]), start = .5, end = 60, frequency = 2)
subject_10.exp_3 <- ts(as.numeric(subject_10[241:480]), start = .5, end = 120, frequency = 2)
subject_10.exp_4 <- ts(as.numeric(subject_10[481:720]), start = .5, end = 120, frequency = 2)
subject_10.exp_5 <- ts(as.numeric(subject_10[721:960]), start = .5, end = 120, frequency = 2)
subject_10.exp_6 <- ts(as.numeric(subject_10[961:1200]), start = .5, end = 120, frequency = 2)
subject_10.exp_7 <- ts(as.numeric(subject_10[1201:1440]), start = .5, end = 120, frequency = 2)
subject_10.exp_8 <- ts(as.numeric(subject_10[1441:1680]), start = .5, end = 120, frequency = 2)
subject_10.exp_9 <- ts(as.numeric(subject_10[1681:1920]), start = .5, end = 120, frequency = 2)
subject_10.exp_10 <- ts(as.numeric(subject_10[1921:2160]), start = .5, end = 120, frequency = 2)
subject_10.exp_11 <- ts(as.numeric(subject_10[2161:2400]), start = .5, end = 120, frequency = 2)
subject_10.exp_12 <- ts(as.numeric(subject_10[2401:2640]), start = .5, end = 120, frequency = 2)
subject_10.exp_13 <- ts(as.numeric(subject_10[2641:2880]), start = .5, end = 120, frequency = 2)
subject_10.exp_14 <- ts(as.numeric(subject_10[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 11
subject_11 <- t(Relative_Alpha_Power_data[11,])
subject_11 <- as.numeric(subject_11[2:3121])

subject_11.exp_1 <- ts(as.numeric(subject_11[1:120]), start = .5, end = 60, frequency = 2)
subject_11.exp_2 <- ts(as.numeric(subject_11[121:240]), start = .5, end = 60, frequency = 2)
subject_11.exp_3 <- ts(as.numeric(subject_11[241:480]), start = .5, end = 120, frequency = 2)
subject_11.exp_4 <- ts(as.numeric(subject_11[481:720]), start = .5, end = 120, frequency = 2)
subject_11.exp_5 <- ts(as.numeric(subject_11[721:960]), start = .5, end = 120, frequency = 2)
subject_11.exp_6 <- ts(as.numeric(subject_11[961:1200]), start = .5, end = 120, frequency = 2)
subject_11.exp_7 <- ts(as.numeric(subject_11[1201:1440]), start = .5, end = 120, frequency = 2)
subject_11.exp_8 <- ts(as.numeric(subject_11[1441:1680]), start = .5, end = 120, frequency = 2)
subject_11.exp_9 <- ts(as.numeric(subject_11[1681:1920]), start = .5, end = 120, frequency = 2)
subject_11.exp_10 <- ts(as.numeric(subject_11[1921:2160]), start = .5, end = 120, frequency = 2)
subject_11.exp_11 <- ts(as.numeric(subject_11[2161:2400]), start = .5, end = 120, frequency = 2)
subject_11.exp_12 <- ts(as.numeric(subject_11[2401:2640]), start = .5, end = 120, frequency = 2)
subject_11.exp_13 <- ts(as.numeric(subject_11[2641:2880]), start = .5, end = 120, frequency = 2)
subject_11.exp_14 <- ts(as.numeric(subject_11[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 12
subject_12 <- t(Relative_Alpha_Power_data[12,])
subject_12 <- as.numeric(subject_12[2:3121])

subject_12.exp_1 <- ts(as.numeric(subject_12[1:120]), start = .5, end = 60, frequency = 2)
subject_12.exp_2 <- ts(as.numeric(subject_12[121:240]), start = .5, end = 60, frequency = 2)
subject_12.exp_3 <- ts(as.numeric(subject_12[241:480]), start = .5, end = 120, frequency = 2)
subject_12.exp_4 <- ts(as.numeric(subject_12[481:720]), start = .5, end = 120, frequency = 2)
subject_12.exp_5 <- ts(as.numeric(subject_12[721:960]), start = .5, end = 120, frequency = 2)
subject_12.exp_6 <- ts(as.numeric(subject_12[961:1200]), start = .5, end = 120, frequency = 2)
subject_12.exp_7 <- ts(as.numeric(subject_12[1201:1440]), start = .5, end = 120, frequency = 2)
subject_12.exp_8 <- ts(as.numeric(subject_12[1441:1680]), start = .5, end = 120, frequency = 2)
subject_12.exp_9 <- ts(as.numeric(subject_12[1681:1920]), start = .5, end = 120, frequency = 2)
subject_12.exp_10 <- ts(as.numeric(subject_12[1921:2160]), start = .5, end = 120, frequency = 2)
subject_12.exp_11 <- ts(as.numeric(subject_12[2161:2400]), start = .5, end = 120, frequency = 2)
subject_12.exp_12 <- ts(as.numeric(subject_12[2401:2640]), start = .5, end = 120, frequency = 2)
subject_12.exp_13 <- ts(as.numeric(subject_12[2641:2880]), start = .5, end = 120, frequency = 2)
subject_12.exp_14 <- ts(as.numeric(subject_12[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 13
subject_13 <- t(Relative_Alpha_Power_data[13,])
subject_13 <- as.numeric(subject_13[2:3121])

subject_13.exp_1 <- ts(as.numeric(subject_13[1:120]), start = .5, end = 60, frequency = 2)
subject_13.exp_2 <- ts(as.numeric(subject_13[121:240]), start = .5, end = 60, frequency = 2)
subject_13.exp_3 <- ts(as.numeric(subject_13[241:480]), start = .5, end = 120, frequency = 2)
subject_13.exp_4 <- ts(as.numeric(subject_13[481:720]), start = .5, end = 120, frequency = 2)
subject_13.exp_5 <- ts(as.numeric(subject_13[721:960]) , start = .5, end = 120, frequency = 2)
subject_13.exp_6 <- ts(as.numeric(subject_13[961:1200]), start = .5, end = 120, frequency = 2)
subject_13.exp_7 <- ts(as.numeric(subject_13[1201:1440]), start = .5, end = 120, frequency = 2)
subject_13.exp_8 <- ts(as.numeric(subject_13[1441:1680]), start = .5, end = 120, frequency = 2)
subject_13.exp_9 <- ts(as.numeric(subject_13[1681:1920]), start = .5, end = 120, frequency = 2)
subject_13.exp_10 <- ts(as.numeric(subject_13[1921:2160]), start = .5, end = 120, frequency = 2)
subject_13.exp_11 <- ts(as.numeric(subject_13[2161:2400]), start = .5, end = 120, frequency = 2)
subject_13.exp_12 <- ts(as.numeric(subject_13[2401:2640]), start = .5, end = 120, frequency = 2)
subject_13.exp_13 <- ts(as.numeric(subject_13[2641:2880]), start = .5, end = 120, frequency = 2)
subject_13.exp_14 <- ts(as.numeric(subject_13[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 14
subject_14 <- t(Relative_Alpha_Power_data[14,])
subject_14 <- as.numeric(subject_14[2:3121])

subject_14.exp_1 <- ts(as.numeric(subject_14[1:120]), start = .5, end = 60, frequency = 2)
subject_14.exp_2 <- ts(as.numeric(subject_14[121:240]), start = .5, end = 60, frequency = 2)
subject_14.exp_3 <- ts(as.numeric(subject_14[241:480]), start = .5, end = 120, frequency = 2)
subject_14.exp_4 <- ts(as.numeric(subject_14[481:720]), start = .5, end = 120, frequency = 2)
subject_14.exp_5 <- ts(as.numeric(subject_14[721:960]), start = .5, end = 120, frequency = 2)
subject_14.exp_6 <- ts(as.numeric(subject_14[961:1200]), start = .5, end = 120, frequency = 2)
subject_14.exp_7 <- ts(as.numeric(subject_14[1201:1440]), start = .5, end = 120, frequency = 2)
subject_14.exp_8 <- ts(as.numeric(subject_14[1441:1680]), start = .5, end = 120, frequency = 2)
subject_14.exp_9 <- ts(as.numeric(subject_14[1681:1920]), start = .5, end = 120, frequency = 2)
subject_14.exp_10 <- ts(as.numeric(subject_14[1921:2160]), start = .5, end = 120, frequency = 2)
subject_14.exp_11 <- ts(as.numeric(subject_14[2161:2400]), start = .5, end = 120, frequency = 2)
subject_14.exp_12 <- ts(as.numeric(subject_14[2401:2640]), start = .5, end = 120, frequency = 2)
subject_14.exp_13 <- ts(as.numeric(subject_14[2641:2880]), start = .5, end = 120, frequency = 2)
subject_14.exp_14 <- ts(as.numeric(subject_14[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 15
subject_15 <- t(Relative_Alpha_Power_data[15,])
subject_15 <- as.numeric(subject_15[2:3121])

subject_15.exp_1 <- ts(as.numeric(subject_15[1:120]), start = .5, end = 60, frequency = 2)
subject_15.exp_2 <- ts(as.numeric(subject_15[121:240]), start = .5, end = 60, frequency = 2)
subject_15.exp_3 <- ts(as.numeric(subject_15[241:480]), start = .5, end = 120, frequency = 2)
subject_15.exp_4 <- ts(as.numeric(subject_15[481:720]), start = .5, end = 120, frequency = 2)
subject_15.exp_5 <- ts(as.numeric(subject_15[721:960]), start = .5, end = 120, frequency = 2)
subject_15.exp_6 <- ts(as.numeric(subject_15[961:1200]), start = .5, end = 120, frequency = 2)
subject_15.exp_7 <- ts(as.numeric(subject_15[1201:1440]), start = .5, end = 120, frequency = 2)
subject_15.exp_8 <- ts(as.numeric(subject_15[1441:1680]), start = .5, end = 120, frequency = 2)
subject_15.exp_9 <- ts(as.numeric(subject_15[1681:1920]), start = .5, end = 120, frequency = 2)
subject_15.exp_10 <- ts(as.numeric(subject_15[1921:2160]), start = .5, end = 120, frequency = 2)
subject_15.exp_11 <- ts(as.numeric(subject_15[2161:2400]), start = .5, end = 120, frequency = 2)
subject_15.exp_12 <- ts(as.numeric(subject_15[2401:2640]), start = .5, end = 120, frequency = 2)
subject_15.exp_13 <- ts(as.numeric(subject_15[2641:2880]), start = .5, end = 120, frequency = 2)
subject_15.exp_14 <- ts(as.numeric(subject_15[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 16
subject_16 <- t(Relative_Alpha_Power_data[16,])
subject_16 <- as.numeric(subject_16[2:3121])

subject_16.exp_1 <- ts(as.numeric(subject_16[1:120]), start = .5, end = 60, frequency = 2)
subject_16.exp_2 <- ts(as.numeric(subject_16[121:240]), start = .5, end = 60, frequency = 2)
subject_16.exp_3 <- ts(as.numeric(subject_16[241:480]), start = .5, end = 120, frequency = 2)
subject_16.exp_4 <- ts(as.numeric(subject_16[482:720]), start = .5, end = 120, frequency = 2)
subject_16.exp_5 <- ts(as.numeric(subject_16[721:960]), start = .5, end = 120, frequency = 2)
subject_16.exp_6 <- ts(as.numeric(subject_16[961:1200]), start = .5, end = 120, frequency = 2)
subject_16.exp_7 <- ts(as.numeric(subject_16[1201:1440]), start = .5, end = 120, frequency = 2)
subject_16.exp_8 <- ts(as.numeric(subject_16[1441:1680]), start = .5, end = 120, frequency = 2)
subject_16.exp_9 <- ts(as.numeric(subject_16[1681:1920]), start = .5, end = 120, frequency = 2)
subject_16.exp_10 <- ts(as.numeric(subject_16[1921:2160]), start = .5, end = 120, frequency = 2)
subject_16.exp_11 <- ts(as.numeric(subject_16[2161:2400]), start = .5, end = 120, frequency = 2)
subject_16.exp_12 <- ts(as.numeric(subject_16[2401:2640]), start = .5, end = 120, frequency = 2)
subject_16.exp_13 <- ts(as.numeric(subject_16[2641:2880]), start = .5, end = 120, frequency = 2)
subject_16.exp_14 <- ts(as.numeric(subject_16[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 17
subject_17 <- t(Relative_Alpha_Power_data[17,])
subject_17 <- as.numeric(subject_17[2:3121])

subject_17.exp_1 <- ts(as.numeric(subject_17[1:120]), start = .5, end = 60, frequency = 2)
subject_17.exp_2 <- ts(as.numeric(subject_17[121:240]), start = .5, end = 60, frequency = 2)
subject_17.exp_3 <- ts(as.numeric(subject_17[241:480]), start = .5, end = 120, frequency = 2)
subject_17.exp_4 <- ts(as.numeric(subject_17[481:720]), start = .5, end = 120, frequency = 2)
subject_17.exp_5 <- ts(as.numeric(subject_17[721:960]), start = .5, end = 120, frequency = 2)
subject_17.exp_6 <- ts(as.numeric(subject_17[961:1200]), start = .5, end = 120, frequency = 2)
subject_17.exp_7 <- ts(as.numeric(subject_17[1201:1440]), start = .5, end = 120, frequency = 2)
subject_17.exp_8 <- ts(as.numeric(subject_17[1441:1680]), start = .5, end = 120, frequency = 2)
subject_17.exp_9 <- ts(as.numeric(subject_17[1681:1920]), start = .5, end = 120, frequency = 2)
subject_17.exp_10 <- ts(as.numeric(subject_17[1921:2160]), start = .5, end = 120, frequency = 2)
subject_17.exp_11 <- ts(as.numeric(subject_17[2161:2400]), start = .5, end = 120, frequency = 2)
subject_17.exp_12 <- ts(as.numeric(subject_17[2401:2640]), start = .5, end = 120, frequency = 2)
subject_17.exp_13 <- ts(as.numeric(subject_17[2641:2880]), start = .5, end = 120, frequency = 2)
subject_17.exp_14 <- ts(as.numeric(subject_17[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 18
subject_18 <- t(Relative_Alpha_Power_data[18,])
subject_18 <- as.numeric(subject_18[2:3121])

subject_18.exp_1 <- ts(as.numeric(subject_18[1:120]), start = .5, end = 60, frequency = 2)
subject_18.exp_2 <- ts(as.numeric(subject_18[121:240]), start = .5, end = 60, frequency = 2)
subject_18.exp_3 <- ts(as.numeric(subject_18[241:480]), start = .5, end = 120, frequency = 2)
subject_18.exp_4 <- ts(as.numeric(subject_18[481:720]), start = .5, end = 120, frequency = 2)
subject_18.exp_5 <- ts(as.numeric(subject_18[721:960]), start = .5, end = 120, frequency = 2)
subject_18.exp_6 <- ts(as.numeric(subject_18[961:1200]), start = .5, end = 120, frequency = 2)
subject_18.exp_7 <- ts(as.numeric(subject_18[1201:1440]), start = .5, end = 120, frequency = 2)
subject_18.exp_8 <- ts(as.numeric(subject_18[1441:1680]), start = .5, end = 120, frequency = 2)
subject_18.exp_9 <- ts(as.numeric(subject_18[1681:1920]), start = .5, end = 120, frequency = 2)
subject_18.exp_10 <- ts(as.numeric(subject_18[1921:2160]), start = .5, end = 120, frequency = 2)
subject_18.exp_11 <- ts(as.numeric(subject_18[2161:2400]), start = .5, end = 120, frequency = 2)
subject_18.exp_12 <- ts(as.numeric(subject_18[2401:2640]), start = .5, end = 120, frequency = 2)
subject_18.exp_13 <- ts(as.numeric(subject_18[2641:2880]), start = .5, end = 120, frequency = 2)
subject_18.exp_14 <- ts(as.numeric(subject_18[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 19
subject_19 <- t(Relative_Alpha_Power_data[19,])
subject_19 <- as.numeric(subject_19[2:3121])

subject_19.exp_1 <- ts(as.numeric(subject_19[1:120]), start = .5, end = 60, frequency = 2)
subject_19.exp_2 <- ts(as.numeric(subject_19[121:240]), start = .5, end = 60, frequency = 2)
subject_19.exp_3 <- ts(as.numeric(subject_19[241:480]), start = .5, end = 120, frequency = 2)
subject_19.exp_4 <- ts(as.numeric(subject_19[481:720]), start = .5, end = 120, frequency = 2)
subject_19.exp_5 <- ts(as.numeric(subject_19[721:960]), start = .5, end = 120, frequency = 2)
subject_19.exp_6 <- ts(as.numeric(subject_19[961:1200]), start = .5, end = 120, frequency = 2)
subject_19.exp_7 <- ts(as.numeric(subject_19[1201:1440]), start = .5, end = 120, frequency = 2)
subject_19.exp_8 <- ts(as.numeric(subject_19[1441:1680]), start = .5, end = 120, frequency = 2)
subject_19.exp_9 <- ts(as.numeric(subject_19[1681:1920]), start = .5, end = 120, frequency = 2)
subject_19.exp_10 <- ts(as.numeric(subject_19[1921:2160]), start = .5, end = 120, frequency = 2)
subject_19.exp_11 <- ts(as.numeric(subject_19[2161:2400]), start = .5, end = 120, frequency = 2)
subject_19.exp_12 <- ts(as.numeric(subject_19[2401:2640]), start = .5, end = 120, frequency = 2)
subject_19.exp_13 <- ts(as.numeric(subject_19[2641:2880]), start = .5, end = 120, frequency = 2)
subject_19.exp_14 <- ts(as.numeric(subject_19[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 20
subject_20 <- t(Relative_Alpha_Power_data[20,])
subject_20 <- as.numeric(subject_20[2:3121])

subject_20.exp_1 <- ts(as.numeric(subject_20[1:120]), start = .5, end = 60, frequency = 2)
subject_20.exp_2 <- ts(as.numeric(subject_20[121:240]), start = .5, end = 60, frequency = 2)
subject_20.exp_3 <- ts(as.numeric(subject_20[241:480]), start = .5, end = 120, frequency = 2)
subject_20.exp_4 <- ts(as.numeric(subject_20[481:720]), start = .5, end = 120, frequency = 2)
subject_20.exp_5 <- ts(as.numeric(subject_20[721:960]), start = .5, end = 120, frequency = 2)
subject_20.exp_6 <- ts(as.numeric(subject_20[961:1200]), start = .5, end = 120, frequency = 2)
subject_20.exp_7 <- ts(as.numeric(subject_20[1201:1440]), start = .5, end = 120, frequency = 2)
subject_20.exp_8 <- ts(as.numeric(subject_20[1441:1680]), start = .5, end = 120, frequency = 2)
subject_20.exp_9 <- ts(as.numeric(subject_20[1681:1920]), start = .5, end = 120, frequency = 2)
subject_20.exp_10 <- ts(as.numeric(subject_20[1921:2160]), start = .5, end = 120, frequency = 2)
subject_20.exp_11 <- ts(as.numeric(subject_20[2161:2400]), start = .5, end = 120, frequency = 2)
subject_20.exp_12 <- ts(as.numeric(subject_20[2401:2640]), start = .5, end = 120, frequency = 2)
subject_20.exp_13 <- ts(as.numeric(subject_20[2641:2880]), start = .5, end = 120, frequency = 2)
subject_20.exp_14 <- ts(as.numeric(subject_20[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 21
subject_21 <- t(Relative_Alpha_Power_data[21,])
subject_21 <- as.numeric(subject_21[2:3121])

subject_21.exp_1 <- ts(as.numeric(subject_21[1:120]), start = .5, end = 60, frequency = 2)
subject_21.exp_2 <- ts(as.numeric(subject_21[121:240]), start = .5, end = 60, frequency = 2)
subject_21.exp_3 <- ts(as.numeric(subject_21[241:480]), start = .5, end = 120, frequency = 2)
subject_21.exp_4 <- ts(as.numeric(subject_21[481:720]), start = .5, end = 120, frequency = 2)
subject_21.exp_5 <- ts(as.numeric(subject_21[721:960]), start = .5, end = 120, frequency = 2)
subject_21.exp_6 <- ts(as.numeric(subject_21[961:1200]), start = .5, end = 120, frequency = 2)
subject_21.exp_7 <- ts(as.numeric(subject_21[1201:1440]), start = .5, end = 120, frequency = 2)
subject_21.exp_8 <- ts(as.numeric(subject_21[1441:1680]), start = .5, end = 120, frequency = 2)
subject_21.exp_9 <- ts(as.numeric(subject_21[1681:1920]), start = .5, end = 120, frequency = 2)
subject_21.exp_10 <- ts(as.numeric(subject_21[1921:2160]), start = .5, end = 120, frequency = 2)
subject_21.exp_11 <- ts(as.numeric(subject_21[2161:2400]), start = .5, end = 120, frequency = 2)
subject_21.exp_12 <- ts(as.numeric(subject_21[2401:2640]), start = .5, end = 120, frequency = 2)
subject_21.exp_13 <- ts(as.numeric(subject_21[2641:2880]), start = .5, end = 120, frequency = 2)
subject_21.exp_14 <- ts(as.numeric(subject_21[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 22
subject_22 <- t(Relative_Alpha_Power_data[22,])
subject_22 <- as.numeric(subject_22[2:3121])

subject_22.exp_1 <- ts(as.numeric(subject_22[1:120]), start = .5, end = 60, frequency = 2)
subject_22.exp_2 <- ts(as.numeric(subject_22[121:240]), start = .5, end = 60, frequency = 2)
subject_22.exp_3 <- ts(as.numeric(subject_22[241:480]), start = .5, end = 120, frequency = 2)
subject_22.exp_4 <- ts(as.numeric(subject_22[481:720]), start = .5, end = 120, frequency = 2)
subject_22.exp_5 <- ts(as.numeric(subject_22[721:960]), start = .5, end = 120, frequency = 2)
subject_22.exp_6 <- ts(as.numeric(subject_22[961:1200]), start = .5, end = 120, frequency = 2)
subject_22.exp_7 <- ts(as.numeric(subject_22[1201:1440]), start = .5, end = 120, frequency = 2)
subject_22.exp_8 <- ts(as.numeric(subject_22[1441:1680]), start = .5, end = 120, frequency = 2)
subject_22.exp_9 <- ts(as.numeric(subject_22[1681:1920]), start = .5, end = 120, frequency = 2)
subject_22.exp_10 <- ts(as.numeric(subject_22[1921:2160]), start = .5, end = 120, frequency = 2)
subject_22.exp_11 <- ts(as.numeric(subject_22[2161:2400]), start = .5, end = 120, frequency = 2)
subject_22.exp_12 <- ts(as.numeric(subject_22[2401:2640]), start = .5, end = 120, frequency = 2)
subject_22.exp_13 <- ts(as.numeric(subject_22[2641:2880]), start = .5, end = 120, frequency = 2)
subject_22.exp_14 <- ts(as.numeric(subject_22[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 23
subject_23 <- t(Relative_Alpha_Power_data[23,])
subject_23 <- as.numeric(subject_23[2:3121])

subject_23.exp_1 <- ts(as.numeric(subject_23[1:120]), start = .5, end = 60, frequency = 2)
subject_23.exp_2 <- ts(as.numeric(subject_23[121:240]), start = .5, end = 60, frequency = 2)
subject_23.exp_3 <- ts(as.numeric(subject_23[241:480]), start = .5, end = 120, frequency = 2)
subject_23.exp_4 <- ts(as.numeric(subject_23[481:720]), start = .5, end = 120, frequency = 2)
subject_23.exp_5 <- ts(as.numeric(subject_23[721:960]), start = .5, end = 120, frequency = 2)
subject_23.exp_6 <- ts(as.numeric(subject_23[961:1200]), start = .5, end = 120, frequency = 2)
subject_23.exp_7 <- ts(as.numeric(subject_23[1201:1440]), start = .5, end = 120, frequency = 2)
subject_23.exp_8 <- ts(as.numeric(subject_23[1441:1680]), start = .5, end = 120, frequency = 2)
subject_23.exp_9 <- ts(as.numeric(subject_23[1681:1920]), start = .5, end = 120, frequency = 2)
subject_23.exp_10 <- ts(as.numeric(subject_23[1921:2160]), start = .5, end = 120, frequency = 2)
subject_23.exp_11 <- ts(as.numeric(subject_23[2161:2400]), start = .5, end = 120, frequency = 2)
subject_23.exp_12 <- ts(as.numeric(subject_23[2401:2640]), start = .5, end = 120, frequency = 2)
subject_23.exp_13 <- ts(as.numeric(subject_23[2641:2880]), start = .5, end = 120, frequency = 2)
subject_23.exp_14 <- ts(as.numeric(subject_23[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 24
subject_24 <- t(Relative_Alpha_Power_data[24,])
subject_24 <- as.numeric(subject_24[2:3121])

subject_24.exp_1 <- ts(as.numeric(subject_24[1:120]), start = .5, end = 60, frequency = 2)
subject_24.exp_2 <- ts(as.numeric(subject_24[121:240]), start = .5, end = 60, frequency = 2)
subject_24.exp_3 <- ts(as.numeric(subject_24[241:480]), start = .5, end = 120, frequency = 2)
subject_24.exp_4 <- ts(as.numeric(subject_24[481:720]), start = .5, end = 120, frequency = 2)
subject_24.exp_5 <- ts(as.numeric(subject_24[721:960]), start = .5, end = 120, frequency = 2)
subject_24.exp_6 <- ts(as.numeric(subject_24[961:1200]), start = .5, end = 120, frequency = 2)
subject_24.exp_7 <- ts(as.numeric(subject_24[1201:1440]), start = .5, end = 120, frequency = 2)
subject_24.exp_8 <- ts(as.numeric(subject_24[1441:1680]), start = .5, end = 120, frequency = 2)
subject_24.exp_9 <- ts(as.numeric(subject_24[1681:1920]), start = .5, end = 120, frequency = 2)
subject_24.exp_10 <- ts(as.numeric(subject_24[191:2160]), start = .5, end = 120, frequency = 2)
subject_24.exp_11 <- ts(as.numeric(subject_24[2161:2400]), start = .5, end = 120, frequency = 2)
subject_24.exp_12 <- ts(as.numeric(subject_24[2401:2640]), start = .5, end = 120, frequency = 2)
subject_24.exp_13 <- ts(as.numeric(subject_24[2641:2880]), start = .5, end = 120, frequency = 2)
subject_24.exp_14 <- ts(as.numeric(subject_24[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 25
subject_25 <- t(Relative_Alpha_Power_data[25,])
subject_25 <- as.numeric(subject_25[2:3121])

subject_25.exp_1 <- ts(as.numeric(subject_25[1:120]), start = .5, end = 60, frequency = 2)
subject_25.exp_2 <- ts(as.numeric(subject_25[121:240]), start = .5, end = 60, frequency = 2)
subject_25.exp_3 <- ts(as.numeric(subject_25[241:480]), start = .5, end = 120, frequency = 2)
subject_25.exp_4 <- ts(as.numeric(subject_25[481:720]), start = .5, end = 120, frequency = 2)
subject_25.exp_5 <- ts(as.numeric(subject_25[721:960]), start = .5, end = 120, frequency = 2)
subject_25.exp_6 <- ts(as.numeric(subject_25[961:1200]), start = .5, end = 120, frequency = 2)
subject_25.exp_7 <- ts(as.numeric(subject_25[1201:1440]), start = .5, end = 120, frequency = 2)
subject_25.exp_8 <- ts(as.numeric(subject_25[1441:1680]), start = .5, end = 120, frequency = 2)
subject_25.exp_9 <- ts(as.numeric(subject_25[1681:1920]), start = .5, end = 120, frequency = 2)
subject_25.exp_10 <- ts(as.numeric(subject_25[1921:2160]), start = .5, end = 120, frequency = 2)
subject_25.exp_11 <- ts(as.numeric(subject_25[2161:2400]), start = .5, end = 120, frequency = 2)
subject_25.exp_12 <- ts(as.numeric(subject_25[2401:2640]), start = .5, end = 120, frequency = 2)
subject_25.exp_13 <- ts(as.numeric(subject_25[2641:2880]), start = .5, end = 120, frequency = 2)
subject_25.exp_14 <- ts(as.numeric(subject_25[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 26
subject_26 <- t(Relative_Alpha_Power_data[26,])
subject_26 <- as.numeric(subject_26[2:3121])

subject_26.exp_1 <- ts(as.numeric(subject_26[1:120]), start = .5, end = 60, frequency = 2)
subject_26.exp_2 <- ts(as.numeric(subject_26[121:240]), start = .5, end = 60, frequency = 2)
subject_26.exp_3 <- ts(as.numeric(subject_26[241:480]), start = .5, end = 120, frequency = 2)
subject_26.exp_4 <- ts(as.numeric(subject_26[481:720]), start = .5, end = 120, frequency = 2)
subject_26.exp_5 <- ts(as.numeric(subject_26[721:960]), start = .5, end = 120, frequency = 2)
subject_26.exp_6 <- ts(as.numeric(subject_26[961:1200]), start = .5, end = 120, frequency = 2)
subject_26.exp_7 <- ts(as.numeric(subject_26[1201:1440]), start = .5, end = 120, frequency = 2)
subject_26.exp_8 <- ts(as.numeric(subject_26[1441:1680]), start = .5, end = 120, frequency = 2)
subject_26.exp_9 <- ts(as.numeric(subject_26[1681:1920]), start = .5, end = 120, frequency = 2)
subject_26.exp_10 <- ts(as.numeric(subject_26[1921:2160]), start = .5, end = 120, frequency = 2)
subject_26.exp_11 <- ts(as.numeric(subject_26[2161:2400]), start = .5, end = 120, frequency = 2)
subject_26.exp_12 <- ts(as.numeric(subject_26[2401:2640]), start = .5, end = 120, frequency = 2)
subject_26.exp_13 <- ts(as.numeric(subject_26[2641:2880]), start = .5, end = 120, frequency = 2)
subject_26.exp_14 <- ts(as.numeric(subject_26[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 27
subject_27 <- t(Relative_Alpha_Power_data[27,])
subject_27 <- as.numeric(subject_27[2:3121])

subject_27.exp_1 <- ts(as.numeric(subject_27[1:120]), start = .5, end = 60, frequency = 2)
subject_27.exp_2 <- ts(as.numeric(subject_27[121:240]), start = .5, end = 60, frequency = 2)
subject_27.exp_3 <- ts(as.numeric(subject_27[241:480]), start = .5, end = 120, frequency = 2)
subject_27.exp_4 <- ts(as.numeric(subject_27[481:720]), start = .5, end = 120, frequency = 2)
subject_27.exp_5 <- ts(as.numeric(subject_27[721:960]), start = .5, end = 120, frequency = 2)
subject_27.exp_6 <- ts(as.numeric(subject_27[961:1200]), start = .5, end = 120, frequency = 2)
subject_27.exp_7 <- ts(as.numeric(subject_27[121:1440]), start = .5, end = 120, frequency = 2)
subject_27.exp_8 <- ts(as.numeric(subject_27[1441:1680]), start = .5, end = 120, frequency = 2)
subject_27.exp_9 <- ts(as.numeric(subject_27[1681:1920]), start = .5, end = 120, frequency = 2)
subject_27.exp_10 <- ts(as.numeric(subject_27[1921:2160]), start = .5, end = 120, frequency = 2)
subject_27.exp_11 <- ts(as.numeric(subject_27[2161:2400]), start = .5, end = 120, frequency = 2)
subject_27.exp_12 <- ts(as.numeric(subject_27[2401:2640]), start = .5, end = 120, frequency = 2)
subject_27.exp_13 <- ts(as.numeric(subject_27[2641:2880]), start = .5, end = 120, frequency = 2)
subject_27.exp_14 <- ts(as.numeric(subject_27[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 28
subject_28 <- t(Relative_Alpha_Power_data[28,])
subject_28 <- as.numeric(subject_28[2:3121])

subject_28.exp_1 <- ts(as.numeric(subject_28[1:120]), start = .5, end = 60, frequency = 2)
subject_28.exp_2 <- ts(as.numeric(subject_28[121:240]), start = .5, end = 60, frequency = 2)
subject_28.exp_3 <- ts(as.numeric(subject_28[241:480]), start = .5, end = 120, frequency = 2)
subject_28.exp_4 <- ts(as.numeric(subject_28[481:720]), start = .5, end = 120, frequency = 2)
subject_28.exp_5 <- ts(as.numeric(subject_28[721:960]), start = .5, end = 120, frequency = 2)
subject_28.exp_6 <- ts(as.numeric(subject_28[961:1200]), start = .5, end = 120, frequency = 2)
subject_28.exp_7 <- ts(as.numeric(subject_28[1201:1440]), start = .5, end = 120, frequency = 2)
subject_28.exp_8 <- ts(as.numeric(subject_28[1441:1680]), start = .5, end = 120, frequency = 2)
subject_28.exp_9 <- ts(as.numeric(subject_28[1681:1920]), start = .5, end = 120, frequency = 2)
subject_28.exp_10 <- ts(as.numeric(subject_28[1921:2160]), start = .5, end = 120, frequency = 2)
subject_28.exp_11 <- ts(as.numeric(subject_28[2161:2400]), start = .5, end = 120, frequency = 2)
subject_28.exp_12 <- ts(as.numeric(subject_28[2401:2640]), start = .5, end = 120, frequency = 2)
subject_28.exp_13 <- ts(as.numeric(subject_28[2641:2880]), start = .5, end = 120, frequency = 2)
subject_28.exp_14 <- ts(as.numeric(subject_28[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 29
subject_29 <- t(Relative_Alpha_Power_data[29,])
subject_29 <- as.numeric(subject_29[2:3121])

subject_29.exp_1 <- ts(as.numeric(subject_29[1:120]), start = .5, end = 60, frequency = 2)
subject_29.exp_2 <- ts(as.numeric(subject_29[121:240]), start = .5, end = 60, frequency = 2)
subject_29.exp_3 <- ts(as.numeric(subject_29[241:480]), start = .5, end = 120, frequency = 2)
subject_29.exp_4 <- ts(as.numeric(subject_29[481:720]), start = .5, end = 120, frequency = 2)
subject_29.exp_5 <- ts(as.numeric(subject_29[721:960]), start = .5, end = 120, frequency = 2)
subject_29.exp_6 <- ts(as.numeric(subject_29[961:1200]), start = .5, end = 120, frequency = 2)
subject_29.exp_7 <- ts(as.numeric(subject_29[1201:1440]), start = .5, end = 120, frequency = 2)
subject_29.exp_8 <- ts(as.numeric(subject_29[1441:1680]), start = .5, end = 120, frequency = 2)
subject_29.exp_9 <- ts(as.numeric(subject_29[1681:1920]), start = .5, end = 120, frequency = 2)
subject_29.exp_10 <- ts(as.numeric(subject_29[1921:2160]), start = .5, end = 120, frequency = 2)
subject_29.exp_11 <- ts(as.numeric(subject_29[2161:2400]), start = .5, end = 120, frequency = 2)
subject_29.exp_12 <- ts(as.numeric(subject_29[2401:2640]), start = .5, end = 120, frequency = 2)
subject_29.exp_13 <- ts(as.numeric(subject_29[2641:2880]), start = .5, end = 120, frequency = 2)
subject_29.exp_14 <- ts(as.numeric(subject_29[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 30
subject_30 <- t(Relative_Alpha_Power_data[30,])
subject_30 <- as.numeric(subject_30[2:3121])

subject_30.exp_1 <- ts(as.numeric(subject_30[1:120]), start = .5, end = 60, frequency = 2)
subject_30.exp_2 <- ts(as.numeric(subject_30[121:240]), start = .5, end = 60, frequency = 2)
subject_30.exp_3 <- ts(as.numeric(subject_30[241:480]), start = .5, end = 120, frequency = 2)
subject_30.exp_4 <- ts(as.numeric(subject_30[481:720]), start = .5, end = 120, frequency = 2)
subject_30.exp_5 <- ts(as.numeric(subject_30[721:960]), start = .5, end = 120, frequency = 2)
subject_30.exp_6 <- ts(as.numeric(subject_30[961:1200]), start = .5, end = 120, frequency = 2)
subject_30.exp_7 <- ts(as.numeric(subject_30[1201:1440]), start = .5, end = 120, frequency = 2)
subject_30.exp_8 <- ts(as.numeric(subject_30[1441:1680]), start = .5, end = 120, frequency = 2)
subject_30.exp_9 <- ts(as.numeric(subject_30[1681:1920]), start = .5, end = 120, frequency = 2)
subject_30.exp_10 <- ts(as.numeric(subject_30[1921:2160]), start = .5, end = 120, frequency = 2)
subject_30.exp_11 <- ts(as.numeric(subject_30[2161:2400]), start = .5, end = 120, frequency = 2)
subject_30.exp_12 <- ts(as.numeric(subject_30[2401:2640]), start = .5, end = 120, frequency = 2)
subject_30.exp_13 <- ts(as.numeric(subject_30[2641:2880]), start = .5, end = 120, frequency = 2)
subject_30.exp_14 <- ts(as.numeric(subject_30[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 31
subject_31 <- t(Relative_Alpha_Power_data[31,])
subject_31 <- as.numeric(subject_31[2:3121])

subject_31.exp_1 <- ts(as.numeric(subject_31[1:120]), start = .5, end = 60, frequency = 2)
subject_31.exp_2 <- ts(as.numeric(subject_31[121:240]), start = .5, end = 60, frequency = 2)
subject_31.exp_3 <- ts(as.numeric(subject_31[241:480]), start = .5, end = 120, frequency = 2)
subject_31.exp_4 <- ts(as.numeric(subject_31[481:720]), start = .5, end = 120, frequency = 2)
subject_31.exp_5 <- ts(as.numeric(subject_31[721:960]), start = .5, end = 120, frequency = 2)
subject_31.exp_6 <- ts(as.numeric(subject_31[961:1200]), start = .5, end = 120, frequency = 2)
subject_31.exp_7 <- ts(as.numeric(subject_31[1201:1440]), start = .5, end = 120, frequency = 2)
subject_31.exp_8 <- ts(as.numeric(subject_31[1441:1680]), start = .5, end = 120, frequency = 2)
subject_31.exp_9 <- ts(as.numeric(subject_31[1681:1920]), start = .5, end = 120, frequency = 2)
subject_31.exp_10 <- ts(as.numeric(subject_31[1921:2160]), start = .5, end = 120, frequency = 2)
subject_31.exp_11 <- ts(as.numeric(subject_31[2161:2400]), start = .5, end = 120, frequency = 2)
subject_31.exp_12 <- ts(as.numeric(subject_31[2401:2640]), start = .5, end = 120, frequency = 2)
subject_31.exp_13 <- ts(as.numeric(subject_31[2641:2880]), start = .5, end = 120, frequency = 2)
subject_31.exp_14 <- ts(as.numeric(subject_31[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 32
subject_32 <- t(Relative_Alpha_Power_data[32,])
subject_32 <- as.numeric(subject_32[2:3121])

subject_32.exp_1 <- ts(as.numeric(subject_32[1:120]), start = .5, end = 60, frequency = 2)
subject_32.exp_2 <- ts(as.numeric(subject_32[121:240]), start = .5, end = 60, frequency = 2)
subject_32.exp_3 <- ts(as.numeric(subject_32[241:480]), start = .5, end = 120, frequency = 2)
subject_32.exp_4 <- ts(as.numeric(subject_32[481:720]), start = .5, end = 120, frequency = 2)
subject_32.exp_5 <- ts(as.numeric(subject_32[721:960]), start = .5, end = 120, frequency = 2)
subject_32.exp_6 <- ts(as.numeric(subject_32[961:1200]), start = .5, end = 120, frequency = 2)
subject_32.exp_7 <- ts(as.numeric(subject_32[1201:1440]), start = .5, end = 120, frequency = 2)
subject_32.exp_8 <- ts(as.numeric(subject_32[1441:1680]), start = .5, end = 120, frequency = 2)
subject_32.exp_9 <- ts(as.numeric(subject_32[1681:1920]), start = .5, end = 120, frequency = 2)
subject_32.exp_10 <- ts(as.numeric(subject_32[1921:2160]), start = .5, end = 120, frequency = 2)
subject_32.exp_11 <- ts(as.numeric(subject_32[2161:2400]), start = .5, end = 120, frequency = 2)
subject_32.exp_12 <- ts(as.numeric(subject_32[2401:2640]), start = .5, end = 120, frequency = 2)
subject_32.exp_13 <- ts(as.numeric(subject_32[2641:2880]), start = .5, end = 120, frequency = 2)
subject_32.exp_14 <- ts(as.numeric(subject_32[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 33
subject_33 <- t(Relative_Alpha_Power_data[33,])
subject_33 <- as.numeric(subject_33[2:3121])

subject_33.exp_1 <- ts(as.numeric(subject_33[1:120]), start = .5, end = 60, frequency = 2)
subject_33.exp_2 <- ts(as.numeric(subject_33[121:240]), start = .5, end = 60, frequency = 2)
subject_33.exp_3 <- ts(as.numeric(subject_33[241:480]), start = .5, end = 120, frequency = 2)
subject_33.exp_4 <- ts(as.numeric(subject_33[481:720]), start = .5, end = 120, frequency = 2)
subject_33.exp_5 <- ts(as.numeric(subject_33[721:960]), start = .5, end = 120, frequency = 2)
subject_33.exp_6 <- ts(as.numeric(subject_33[961:1200]), start = .5, end = 120, frequency = 2)
subject_33.exp_7 <- ts(as.numeric(subject_33[1201:1440]), start = .5, end = 120, frequency = 2)
subject_33.exp_8 <- ts(as.numeric(subject_33[1441:1680]), start = .5, end = 120, frequency = 2)
subject_33.exp_9 <- ts(as.numeric(subject_33[1681:1920]), start = .5, end = 120, frequency = 2)
subject_33.exp_10 <- ts(as.numeric(subject_33[1921:2160]), start = .5, end = 120, frequency = 2)
subject_33.exp_11 <- ts(as.numeric(subject_33[2161:2400]), start = .5, end = 120, frequency = 2)
subject_33.exp_12 <- ts(as.numeric(subject_33[2401:2640]), start = .5, end = 120, frequency = 2)
subject_33.exp_13 <- ts(as.numeric(subject_33[2641:2880]), start = .5, end = 120, frequency = 2)
subject_33.exp_14 <- ts(as.numeric(subject_33[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 34
subject_34 <- t(Relative_Alpha_Power_data[34,])
subject_34 <- as.numeric(subject_34[2:3121])

subject_34.exp_1 <- ts(as.numeric(subject_34[1:120]), start = .5, end = 60, frequency = 2)
subject_34.exp_2 <- ts(as.numeric(subject_34[121:240]), start = .5, end = 60, frequency = 2)
subject_34.exp_3 <- ts(as.numeric(subject_34[241:480]), start = .5, end = 120, frequency = 2)
subject_34.exp_4 <- ts(as.numeric(subject_34[481:720]), start = .5, end = 120, frequency = 2)
subject_34.exp_5 <- ts(as.numeric(subject_34[721:960]), start = .5, end = 120, frequency = 2)
subject_34.exp_6 <- ts(as.numeric(subject_34[961:1200]), start = .5, end = 120, frequency = 2)
subject_34.exp_7 <- ts(as.numeric(subject_34[1201:1440]), start = .5, end = 120, frequency = 2)
subject_34.exp_8 <- ts(as.numeric(subject_34[1441:1680]), start = .5, end = 120, frequency = 2)
subject_34.exp_9 <- ts(as.numeric(subject_34[1681:1920]), start = .5, end = 120, frequency = 2)
subject_34.exp_10 <- ts(as.numeric(subject_34[1921:2160]), start = .5, end = 120, frequency = 2)
subject_34.exp_11 <- ts(as.numeric(subject_34[2161:2400]), start = .5, end = 120, frequency = 2)
subject_34.exp_12 <- ts(as.numeric(subject_34[2401:2640]), start = .5, end = 120, frequency = 2)
subject_34.exp_13 <- ts(as.numeric(subject_34[2641:2880]), start = .5, end = 120, frequency = 2)
subject_34.exp_14 <- ts(as.numeric(subject_34[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 35
subject_35 <- t(Relative_Alpha_Power_data[35,])
subject_35 <- as.numeric(subject_35[2:3121])

subject_35.exp_1 <- ts(as.numeric(subject_35[1:120]), start = .5, end = 60, frequency = 2)
subject_35.exp_2 <- ts(as.numeric(subject_35[121:240]), start = .5, end = 60, frequency = 2)
subject_35.exp_3 <- ts(as.numeric(subject_35[241:480]), start = .5, end = 120, frequency = 2)
subject_35.exp_4 <- ts(as.numeric(subject_35[481:720]), start = .5, end = 120, frequency = 2)
subject_35.exp_5 <- ts(as.numeric(subject_35[721:960]), start = .5, end = 120, frequency = 2)
subject_35.exp_6 <- ts(as.numeric(subject_35[961:1200]), start = .5, end = 120, frequency = 2)
subject_35.exp_7 <- ts(as.numeric(subject_35[1201:1440]), start = .5, end = 120, frequency = 2)
subject_35.exp_8 <- ts(as.numeric(subject_35[1441:1680]), start = .5, end = 120, frequency = 2)
subject_35.exp_9 <- ts(as.numeric(subject_35[1681:1920]), start = .5, end = 120, frequency = 2)
subject_35.exp_10 <- ts(as.numeric(subject_35[1921:2160]), start = .5, end = 120, frequency = 2)
subject_35.exp_11 <- ts(as.numeric(subject_35[2161:2400]), start = .5, end = 120, frequency = 2)
subject_35.exp_12 <- ts(as.numeric(subject_35[2401:2640]), start = .5, end = 120, frequency = 2)
subject_35.exp_13 <- ts(as.numeric(subject_35[2641:2880]), start = .5, end = 120, frequency = 2)
subject_35.exp_14 <- ts(as.numeric(subject_35[2881:3120]), start = .5, end = 120, frequency = 2)

## subject No. 36
subject_36 <- t(Relative_Alpha_Power_data[36,])
subject_36 <- as.numeric(subject_36[2:3121])

subject_36.exp_1 <- ts(as.numeric(subject_36[1:120]), start = .5, end = 60, frequency = 2)
subject_36.exp_2 <- ts(as.numeric(subject_36[121:240]), start = .5, end = 60, frequency = 2)
subject_36.exp_3 <- ts(as.numeric(subject_36[241:480]), start = .5, end = 120, frequency = 2)
subject_36.exp_4 <- ts(as.numeric(subject_36[481:720]), start = .5, end = 120, frequency = 2)
subject_36.exp_5 <- ts(as.numeric(subject_36[721:960]), start = .5, end = 120, frequency = 2)
subject_36.exp_6 <- ts(as.numeric(subject_36[961:1200]), start = .5, end = 120, frequency = 2)
subject_36.exp_7 <- ts(as.numeric(subject_36[1201:1440]), start = .5, end = 120, frequency = 2)
subject_36.exp_8 <- ts(as.numeric(subject_36[1441:1680]), start = .5, end = 120, frequency = 2)
subject_36.exp_9 <- ts(as.numeric(subject_36[1681:1920]), start = .5, end = 120, frequency = 2)
subject_36.exp_10 <- ts(as.numeric(subject_36[1921:2160]), start = .5, end = 120, frequency = 2)
subject_36.exp_11 <- ts(as.numeric(subject_36[2161:2400]), start = .5, end = 120, frequency = 2)
subject_36.exp_12 <- ts(as.numeric(subject_36[2401:2640]), start = .5, end = 120, frequency = 2)
subject_36.exp_13 <- ts(as.numeric(subject_36[2641:2880]), start = .5, end = 120, frequency = 2)
subject_36.exp_14 <- ts(as.numeric(subject_36[2881:3120]), start = .5, end = 120, frequency = 2)

### means for experiments 1 thru 14 -------------------------------------------

## experiment 1

meanS.exp_1 <- c(mean(subject_1.exp_1), mean(subject_2.exp_1), mean(subject_3.exp_1), 
                mean(subject_4.exp_1), mean(subject_5.exp_1), mean(subject_6.exp_1), 
                mean(subject_7.exp_1), mean(subject_8.exp_1), mean(subject_9.exp_1), 
                mean(subject_10.exp_1), mean(subject_11.exp_1), mean(subject_12.exp_1), 
                mean(subject_13.exp_1), mean(subject_14.exp_1), mean(subject_15.exp_1), 
                mean(subject_16.exp_1), mean(subject_17.exp_1), mean(subject_18.exp_1), 
                mean(subject_19.exp_1), mean(subject_20.exp_1), mean(subject_21.exp_1),
                mean(subject_22.exp_1), mean(subject_23.exp_1), mean(subject_24.exp_1), 
                mean(subject_25.exp_1), mean(subject_26.exp_1), mean(subject_27.exp_1),
                mean(subject_28.exp_1), mean(subject_29.exp_1), mean(subject_30.exp_1),
                mean(subject_31.exp_1), mean(subject_32.exp_1), mean(subject_33.exp_1),
                mean(subject_34.exp_1), mean(subject_35.exp_1), mean(subject_36.exp_1))

mean.exp_1 <- mean(meanS.exp_1)
var.meanS.exp_1 <- var(meanS.exp_1)

## experiment 2

meanS.exp_2 <- c(mean(subject_1.exp_2), mean(subject_2.exp_2), mean(subject_3.exp_2), 
                 mean(subject_4.exp_2), mean(subject_5.exp_2), mean(subject_6.exp_2), 
                 mean(subject_7.exp_2), mean(subject_8.exp_2), mean(subject_9.exp_2), 
                 mean(subject_10.exp_2), mean(subject_11.exp_2), mean(subject_12.exp_2), 
                 mean(subject_13.exp_2), mean(subject_14.exp_2), mean(subject_15.exp_2), 
                 mean(subject_16.exp_2), mean(subject_17.exp_2), mean(subject_18.exp_2), 
                 mean(subject_19.exp_2), mean(subject_20.exp_2), mean(subject_21.exp_2),
                 mean(subject_22.exp_2), mean(subject_23.exp_2), mean(subject_24.exp_2), 
                 mean(subject_25.exp_2), mean(subject_26.exp_2), mean(subject_27.exp_2),
                 mean(subject_28.exp_2), mean(subject_29.exp_2), mean(subject_30.exp_2),
                 mean(subject_31.exp_2), mean(subject_32.exp_2), mean(subject_33.exp_2),
                 mean(subject_34.exp_2), mean(subject_35.exp_2), mean(subject_36.exp_2))

mean.exp_2 <- mean(meanS.exp_2)
var.meanS.exp_2 <- var(meanS.exp_2)

## experiment 3

meanS.exp_3 <- c(mean(subject_1.exp_3), mean(subject_2.exp_3), mean(subject_3.exp_3), 
                 mean(subject_4.exp_3), mean(subject_5.exp_3), mean(subject_6.exp_3), 
                 mean(subject_7.exp_3), mean(subject_8.exp_3), mean(subject_9.exp_3), 
                 mean(subject_10.exp_3), mean(subject_11.exp_3), mean(subject_12.exp_3), 
                 mean(subject_13.exp_3), mean(subject_14.exp_3), mean(subject_15.exp_3), 
                 mean(subject_16.exp_3), mean(subject_17.exp_3), mean(subject_18.exp_3), 
                 mean(subject_19.exp_3), mean(subject_20.exp_3), mean(subject_21.exp_3),
                 mean(subject_22.exp_3), mean(subject_23.exp_3), mean(subject_24.exp_3), 
                 mean(subject_25.exp_3), mean(subject_26.exp_3), mean(subject_27.exp_3),
                 mean(subject_28.exp_3), mean(subject_29.exp_3), mean(subject_30.exp_3),
                 mean(subject_31.exp_3), mean(subject_32.exp_3), mean(subject_33.exp_3),
                 mean(subject_34.exp_3), mean(subject_35.exp_3), mean(subject_36.exp_3))

mean.exp_3 <- mean(meanS.exp_3)
var.meanS.exp_3 <- var(meanS.exp_3)

## experiment 4

meanS.exp_4 <- c(mean(subject_1.exp_4), mean(subject_2.exp_4), mean(subject_3.exp_4), 
                 mean(subject_4.exp_4), mean(subject_5.exp_4), mean(subject_6.exp_4), 
                 mean(subject_7.exp_4), mean(subject_8.exp_4), mean(subject_9.exp_4), 
                 mean(subject_10.exp_4), mean(subject_11.exp_4), mean(subject_12.exp_4), 
                 mean(subject_13.exp_4), mean(subject_14.exp_4), mean(subject_15.exp_4), 
                 mean(subject_16.exp_4), mean(subject_17.exp_4), mean(subject_18.exp_4), 
                 mean(subject_19.exp_4), mean(subject_20.exp_4), mean(subject_21.exp_4),
                 mean(subject_22.exp_4), mean(subject_23.exp_4), mean(subject_24.exp_4), 
                 mean(subject_25.exp_4), mean(subject_26.exp_4), mean(subject_27.exp_4),
                 mean(subject_28.exp_4), mean(subject_29.exp_4), mean(subject_30.exp_4),
                 mean(subject_31.exp_4), mean(subject_32.exp_4), mean(subject_33.exp_4),
                 mean(subject_34.exp_4), mean(subject_35.exp_4), mean(subject_36.exp_4))

mean.exp_4 <- mean(meanS.exp_4)
var.meanS.exp_4 <- var(meanS.exp_4)

## experiment 5

meanS.exp_5 <- c(mean(subject_1.exp_5), mean(subject_2.exp_5), mean(subject_3.exp_5), 
                 mean(subject_4.exp_5), mean(subject_5.exp_5), mean(subject_6.exp_5), 
                 mean(subject_7.exp_5), mean(subject_8.exp_5), mean(subject_9.exp_5), 
                 mean(subject_10.exp_5), mean(subject_11.exp_5), mean(subject_12.exp_5), 
                 mean(subject_13.exp_5), mean(subject_14.exp_5), mean(subject_15.exp_5), 
                 mean(subject_16.exp_5), mean(subject_17.exp_5), mean(subject_18.exp_5), 
                 mean(subject_19.exp_5), mean(subject_20.exp_5), mean(subject_21.exp_5),
                 mean(subject_22.exp_5), mean(subject_23.exp_5), mean(subject_24.exp_5), 
                 mean(subject_25.exp_5), mean(subject_26.exp_5), mean(subject_27.exp_5),
                 mean(subject_28.exp_5), mean(subject_29.exp_5), mean(subject_30.exp_5),
                 mean(subject_31.exp_5), mean(subject_32.exp_5), mean(subject_33.exp_5),
                 mean(subject_34.exp_5), mean(subject_35.exp_5), mean(subject_36.exp_5))

mean.exp_5 <- mean(meanS.exp_5)
var.meanS.exp_5 <- var(meanS.exp_5)

## experiment 6

meanS.exp_6 <- c(mean(subject_1.exp_6), mean(subject_2.exp_6), mean(subject_3.exp_6), 
                 mean(subject_4.exp_6), mean(subject_5.exp_6), mean(subject_6.exp_6), 
                 mean(subject_7.exp_6), mean(subject_8.exp_6), mean(subject_9.exp_6), 
                 mean(subject_10.exp_6), mean(subject_11.exp_6), mean(subject_12.exp_6), 
                 mean(subject_13.exp_6), mean(subject_14.exp_6), mean(subject_15.exp_6), 
                 mean(subject_16.exp_6), mean(subject_17.exp_6), mean(subject_18.exp_6), 
                 mean(subject_19.exp_6), mean(subject_20.exp_6), mean(subject_21.exp_6),
                 mean(subject_22.exp_6), mean(subject_23.exp_6), mean(subject_24.exp_6), 
                 mean(subject_25.exp_6), mean(subject_26.exp_6), mean(subject_27.exp_6),
                 mean(subject_28.exp_6), mean(subject_29.exp_6), mean(subject_30.exp_6),
                 mean(subject_31.exp_6), mean(subject_32.exp_6), mean(subject_33.exp_6),
                 mean(subject_34.exp_6), mean(subject_35.exp_6), mean(subject_36.exp_6))

mean.exp_6 <- mean(meanS.exp_6)
var.meanS.exp_6 <- var(meanS.exp_6)

## experiment 7
meanS.exp_7 <- c(mean(subject_1.exp_7), mean(subject_2.exp_7), mean(subject_3.exp_7), 
                 mean(subject_4.exp_7), mean(subject_5.exp_7), mean(subject_6.exp_7), 
                 mean(subject_7.exp_7), mean(subject_8.exp_7), mean(subject_9.exp_7),
                 mean(subject_10.exp_7), mean(subject_11.exp_7), mean(subject_12.exp_7), 
                 mean(subject_13.exp_7), mean(subject_14.exp_7), mean(subject_15.exp_7), 
                 mean(subject_16.exp_7), mean(subject_17.exp_7), mean(subject_18.exp_7), 
                 mean(subject_19.exp_7), mean(subject_20.exp_7), mean(subject_21.exp_7),
                 mean(subject_22.exp_7), mean(subject_23.exp_7), mean(subject_24.exp_7), 
                 mean(subject_25.exp_7), mean(subject_26.exp_7), mean(subject_27.exp_7),
                 mean(subject_28.exp_7), mean(subject_29.exp_7), mean(subject_30.exp_7),
                 mean(subject_31.exp_7), mean(subject_32.exp_7), mean(subject_33.exp_7),
                 mean(subject_34.exp_7), mean(subject_35.exp_7), mean(subject_36.exp_7))

mean.exp_7 <- mean(meanS.exp_7)
var.meanS.exp_7 <- var(meanS.exp_7)

## experiment 8

meanS.exp_8 <- c(mean(subject_1.exp_8), mean(subject_2.exp_8), mean(subject_3.exp_8), 
                 mean(subject_4.exp_8), mean(subject_5.exp_8), mean(subject_6.exp_8), 
                 mean(subject_7.exp_8), mean(subject_8.exp_8), mean(subject_9.exp_8), 
                 mean(subject_10.exp_8), mean(subject_11.exp_8), mean(subject_12.exp_8), 
                 mean(subject_13.exp_8), mean(subject_14.exp_8), mean(subject_15.exp_8), 
                 mean(subject_16.exp_8), mean(subject_17.exp_8), mean(subject_18.exp_8), 
                 mean(subject_19.exp_8), mean(subject_20.exp_8), mean(subject_21.exp_8),
                 mean(subject_22.exp_8), mean(subject_23.exp_8), mean(subject_24.exp_8), 
                 mean(subject_25.exp_8), mean(subject_26.exp_8), mean(subject_27.exp_8),
                 mean(subject_28.exp_8), mean(subject_29.exp_8), mean(subject_30.exp_8),
                 mean(subject_31.exp_8), mean(subject_32.exp_8), mean(subject_33.exp_8),
                 mean(subject_34.exp_8), mean(subject_35.exp_8), mean(subject_36.exp_8))

mean.exp_8 <- mean(meanS.exp_8)
var.meanS.exp_8 <- var(meanS.exp_8)

## experiment 9

meanS.exp_9 <- c(mean(subject_1.exp_9), mean(subject_2.exp_9), mean(subject_3.exp_9), 
                 mean(subject_4.exp_9), mean(subject_5.exp_9), mean(subject_6.exp_9), 
                 mean(subject_7.exp_9), mean(subject_8.exp_9), mean(subject_9.exp_9), 
                 mean(subject_10.exp_9), mean(subject_11.exp_9), mean(subject_12.exp_9), 
                 mean(subject_13.exp_9), mean(subject_14.exp_9), mean(subject_15.exp_9), 
                 mean(subject_16.exp_9), mean(subject_17.exp_9), mean(subject_18.exp_9), 
                 mean(subject_19.exp_9), mean(subject_20.exp_9), mean(subject_21.exp_9),
                 mean(subject_22.exp_9), mean(subject_23.exp_9), mean(subject_24.exp_9), 
                 mean(subject_25.exp_9), mean(subject_26.exp_9), mean(subject_27.exp_9),
                 mean(subject_28.exp_9), mean(subject_29.exp_9), mean(subject_30.exp_9),
                 mean(subject_31.exp_9), mean(subject_32.exp_9), mean(subject_33.exp_9),
                 mean(subject_34.exp_9), mean(subject_35.exp_9), mean(subject_36.exp_9))

mean.exp_9 <- mean(meanS.exp_9)
var.meanS.exp_9 <- var(meanS.exp_9)

## experiment 10

meanS.exp_10 <- c(mean(subject_1.exp_10), mean(subject_2.exp_10), mean(subject_3.exp_10), 
                 mean(subject_4.exp_10), mean(subject_5.exp_10), mean(subject_6.exp_10), 
                 mean(subject_7.exp_10), mean(subject_8.exp_10), mean(subject_9.exp_10), 
                 mean(subject_10.exp_10), mean(subject_11.exp_10), mean(subject_12.exp_10), 
                 mean(subject_13.exp_10), mean(subject_14.exp_10), mean(subject_15.exp_10), 
                 mean(subject_16.exp_10), mean(subject_17.exp_10), mean(subject_18.exp_10), 
                 mean(subject_19.exp_10), mean(subject_20.exp_10), mean(subject_21.exp_10),
                 mean(subject_22.exp_10), mean(subject_23.exp_10), mean(subject_24.exp_10), 
                 mean(subject_25.exp_10), mean(subject_26.exp_10), mean(subject_27.exp_10),
                 mean(subject_28.exp_10), mean(subject_29.exp_10), mean(subject_30.exp_10),
                 mean(subject_31.exp_10), mean(subject_32.exp_10), mean(subject_33.exp_10),
                 mean(subject_34.exp_10), mean(subject_35.exp_10), mean(subject_36.exp_10))

mean.exp_10 <- mean(meanS.exp_10)
var.meanS.exp_10 <- var(meanS.exp_10)

## experiment 11

meanS.exp_11 <- c(mean(subject_1.exp_11), mean(subject_2.exp_11), mean(subject_3.exp_11), 
                 mean(subject_4.exp_11), mean(subject_5.exp_11), mean(subject_6.exp_11), 
                 mean(subject_7.exp_11), mean(subject_8.exp_11), mean(subject_9.exp_11), 
                 mean(subject_10.exp_11), mean(subject_11.exp_11), mean(subject_12.exp_11), 
                 mean(subject_13.exp_11), mean(subject_14.exp_11), mean(subject_15.exp_11), 
                 mean(subject_16.exp_11), mean(subject_17.exp_11), mean(subject_18.exp_11), 
                 mean(subject_19.exp_11), mean(subject_20.exp_11), mean(subject_21.exp_11),
                 mean(subject_22.exp_11), mean(subject_23.exp_11), mean(subject_24.exp_11), 
                 mean(subject_25.exp_11), mean(subject_26.exp_11), mean(subject_27.exp_11),
                 mean(subject_28.exp_11), mean(subject_29.exp_11), mean(subject_30.exp_11),
                 mean(subject_31.exp_11), mean(subject_32.exp_11), mean(subject_33.exp_11),
                 mean(subject_34.exp_11), mean(subject_35.exp_11), mean(subject_36.exp_11))

mean.exp_11 <- mean(meanS.exp_11)
var.meanS.exp_11 <- var(meanS.exp_11)

## experiment 12

meanS.exp_12 <- c(mean(subject_1.exp_12), mean(subject_2.exp_12), mean(subject_3.exp_12), 
                 mean(subject_4.exp_12), mean(subject_5.exp_12), mean(subject_6.exp_12), 
                 mean(subject_7.exp_12), mean(subject_8.exp_12), mean(subject_9.exp_12), 
                 mean(subject_10.exp_12), mean(subject_11.exp_12), mean(subject_12.exp_12), 
                 mean(subject_13.exp_12), mean(subject_14.exp_12), mean(subject_15.exp_12), 
                 mean(subject_16.exp_12), mean(subject_17.exp_12), mean(subject_18.exp_12), 
                 mean(subject_19.exp_12), mean(subject_20.exp_12), mean(subject_21.exp_12),
                 mean(subject_22.exp_12), mean(subject_23.exp_12), mean(subject_24.exp_12), 
                 mean(subject_25.exp_12), mean(subject_26.exp_12), mean(subject_27.exp_12),
                 mean(subject_28.exp_12), mean(subject_29.exp_12), mean(subject_30.exp_12),
                 mean(subject_31.exp_12), mean(subject_32.exp_12), mean(subject_33.exp_12),
                 mean(subject_34.exp_12), mean(subject_35.exp_12), mean(subject_36.exp_12))

mean.exp_12 <- mean(meanS.exp_2)
var.meanS.exp_12 <- var(meanS.exp_12)

## experiment 13

meanS.exp_13 <- c(mean(subject_1.exp_13), mean(subject_2.exp_13), mean(subject_3.exp_13), 
                 mean(subject_4.exp_13), mean(subject_5.exp_13), mean(subject_6.exp_13), 
                 mean(subject_7.exp_13), mean(subject_8.exp_13), mean(subject_9.exp_13), 
                 mean(subject_10.exp_13), mean(subject_11.exp_13), mean(subject_12.exp_13), 
                 mean(subject_13.exp_13), mean(subject_14.exp_13), mean(subject_15.exp_13), 
                 mean(subject_16.exp_13), mean(subject_17.exp_13), mean(subject_18.exp_13), 
                 mean(subject_19.exp_13), mean(subject_20.exp_13), mean(subject_21.exp_13),
                 mean(subject_22.exp_13), mean(subject_23.exp_13), mean(subject_24.exp_13), 
                 mean(subject_25.exp_13), mean(subject_26.exp_13), mean(subject_27.exp_13),
                 mean(subject_28.exp_13), mean(subject_29.exp_13), mean(subject_30.exp_13),
                 mean(subject_31.exp_13), mean(subject_32.exp_13), mean(subject_33.exp_13),
                 mean(subject_34.exp_13), mean(subject_35.exp_13), mean(subject_36.exp_13))

mean.exp_13 <- mean(meanS.exp_13)
var.meanS.exp_13 <- var(meanS.exp_13)

## experiment 14

meanS.exp_14 <- c(mean(subject_1.exp_14), mean(subject_2.exp_14), mean(subject_3.exp_14), 
                 mean(subject_4.exp_14), mean(subject_5.exp_14), mean(subject_6.exp_14), 
                 mean(subject_7.exp_14), mean(subject_8.exp_14), mean(subject_9.exp_14), 
                 mean(subject_10.exp_14), mean(subject_11.exp_14), mean(subject_12.exp_14), 
                 mean(subject_13.exp_14), mean(subject_14.exp_14), mean(subject_15.exp_14), 
                 mean(subject_16.exp_14), mean(subject_17.exp_14), mean(subject_18.exp_14), 
                 mean(subject_19.exp_14), mean(subject_20.exp_14), mean(subject_21.exp_14),
                 mean(subject_22.exp_14), mean(subject_23.exp_14), mean(subject_24.exp_14), 
                 mean(subject_25.exp_14), mean(subject_26.exp_14), mean(subject_27.exp_14),
                 mean(subject_28.exp_14), mean(subject_29.exp_14), mean(subject_30.exp_14),
                 mean(subject_31.exp_14), mean(subject_32.exp_14), mean(subject_33.exp_14),
                 mean(subject_34.exp_14), mean(subject_35.exp_14), mean(subject_36.exp_14))

mean.exp_14 <- mean(meanS.exp_14)
var.meanS.exp_14 <- var(meanS.exp_14)

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

## experiment 1

varS.exp_1 <- c(var(subject_1.exp_1), var(subject_2.exp_1), var(subject_3.exp_1), 
                var(subject_4.exp_1), var(subject_5.exp_1), var(subject_6.exp_1), 
                var(subject_7.exp_1), var(subject_8.exp_1), var(subject_9.exp_1), 
                var(subject_10.exp_1), var(subject_11.exp_1), var(subject_12.exp_1), 
                var(subject_13.exp_1), var(subject_14.exp_1), var(subject_15.exp_1), 
                var(subject_16.exp_1), var(subject_17.exp_1), var(subject_18.exp_1), 
                var(subject_19.exp_1), var(subject_20.exp_1), var(subject_21.exp_1),
                var(subject_22.exp_1), var(subject_23.exp_1), var(subject_24.exp_1), 
                var(subject_25.exp_1), var(subject_26.exp_1), var(subject_27.exp_1),
                var(subject_28.exp_1), var(subject_29.exp_1), var(subject_30.exp_1),
                var(subject_31.exp_1), var(subject_32.exp_1), var(subject_33.exp_1),
                var(subject_34.exp_1), var(subject_35.exp_1), var(subject_36.exp_1))

var.exp_1 <- var(varS.exp_1)
avg.var.exp_1 <- mean(varS.exp_1)

## experiment 2

varS.exp_2 <- c(var(subject_1.exp_2), var(subject_2.exp_2), var(subject_3.exp_2), 
                var(subject_4.exp_2), var(subject_5.exp_2), var(subject_6.exp_2), 
                var(subject_7.exp_2), var(subject_8.exp_2), var(subject_9.exp_2), 
                var(subject_10.exp_2), var(subject_11.exp_2), var(subject_12.exp_2), 
                var(subject_13.exp_2), var(subject_14.exp_2), var(subject_15.exp_2), 
                var(subject_16.exp_2), var(subject_17.exp_2), var(subject_18.exp_2), 
                var(subject_19.exp_2), var(subject_20.exp_2), var(subject_21.exp_2),
                var(subject_22.exp_2), var(subject_23.exp_2), var(subject_24.exp_2), 
                var(subject_25.exp_2), var(subject_26.exp_2), var(subject_27.exp_2),
                var(subject_28.exp_2), var(subject_29.exp_2), var(subject_30.exp_2),
                var(subject_31.exp_2), var(subject_32.exp_2), var(subject_33.exp_2),
                var(subject_34.exp_2), var(subject_35.exp_2), var(subject_36.exp_2))

var.exp_2 <- var(varS.exp_2)
avg.var.exp_2 <- mean(varS.exp_2)

## experiment 3

varS.exp_3 <- c(var(subject_1.exp_3), var(subject_2.exp_3), var(subject_3.exp_3), 
                var(subject_4.exp_3), var(subject_5.exp_3), var(subject_6.exp_3), 
                var(subject_7.exp_3), var(subject_8.exp_3), var(subject_9.exp_3), 
                var(subject_10.exp_3), var(subject_11.exp_3), var(subject_12.exp_3), 
                var(subject_13.exp_3), var(subject_14.exp_3), var(subject_15.exp_3), 
                var(subject_16.exp_3), var(subject_17.exp_3), var(subject_18.exp_3), 
                var(subject_19.exp_3), var(subject_20.exp_3), var(subject_21.exp_3),
                var(subject_22.exp_3), var(subject_23.exp_3), var(subject_24.exp_3), 
                var(subject_25.exp_3), var(subject_26.exp_3), var(subject_27.exp_3),
                var(subject_28.exp_3), var(subject_29.exp_3), var(subject_30.exp_3),
                var(subject_31.exp_3), var(subject_32.exp_3), var(subject_33.exp_3),
                var(subject_34.exp_3), var(subject_35.exp_3), var(subject_36.exp_3))

var.exp_3 <- var(varS.exp_3)
avg.var.exp_3 <- mean(varS.exp_3)

## experiment 4

varS.exp_4 <- c(var(subject_1.exp_4), var(subject_2.exp_4), var(subject_3.exp_4), 
                var(subject_4.exp_4), var(subject_5.exp_4), var(subject_6.exp_4), 
                var(subject_7.exp_4), var(subject_8.exp_4), var(subject_9.exp_4), 
                var(subject_10.exp_4), var(subject_11.exp_4), var(subject_12.exp_4), 
                var(subject_13.exp_4), var(subject_14.exp_4), var(subject_15.exp_4), 
                var(subject_16.exp_4), var(subject_17.exp_4), var(subject_18.exp_4), 
                var(subject_19.exp_4), var(subject_20.exp_4), var(subject_21.exp_4),
                var(subject_22.exp_4), var(subject_23.exp_4), var(subject_24.exp_4), 
                var(subject_25.exp_4), var(subject_26.exp_4), var(subject_27.exp_4),
                var(subject_28.exp_4), var(subject_29.exp_4), var(subject_30.exp_4),
                var(subject_31.exp_4), var(subject_32.exp_4), var(subject_33.exp_4),
                var(subject_34.exp_4), var(subject_35.exp_4), var(subject_36.exp_4))

var.exp_4 <- var(varS.exp_4)
avg.var.exp_4 <- mean(varS.exp_4)

## experiment 5

varS.exp_5 <- c(var(subject_1.exp_5), var(subject_2.exp_5), var(subject_3.exp_5), 
                var(subject_4.exp_5), var(subject_5.exp_5), var(subject_6.exp_5), 
                var(subject_7.exp_5), var(subject_8.exp_5), var(subject_9.exp_5), 
                var(subject_10.exp_5), var(subject_11.exp_5), var(subject_12.exp_5), 
                var(subject_13.exp_5), var(subject_14.exp_5), var(subject_15.exp_5), 
                var(subject_16.exp_5), var(subject_17.exp_5), var(subject_18.exp_5), 
                var(subject_19.exp_5), var(subject_20.exp_5), var(subject_21.exp_5),
                var(subject_22.exp_5), var(subject_23.exp_5), var(subject_24.exp_5), 
                var(subject_25.exp_5), var(subject_26.exp_5), var(subject_27.exp_5),
                var(subject_28.exp_5), var(subject_29.exp_5), var(subject_30.exp_5),
                var(subject_31.exp_5), var(subject_32.exp_5), var(subject_33.exp_5),
                var(subject_34.exp_5), var(subject_35.exp_5), var(subject_36.exp_5))

var.exp_5 <- var(varS.exp_5)
avg.var.exp_5 <- mean(varS.exp_5)

## experiment 6

varS.exp_6 <- c(var(subject_1.exp_6), var(subject_2.exp_6), var(subject_3.exp_6), 
                var(subject_4.exp_6), var(subject_5.exp_6), var(subject_6.exp_6), 
                var(subject_7.exp_6), var(subject_8.exp_6), var(subject_9.exp_6), 
                var(subject_10.exp_6), var(subject_11.exp_6), var(subject_12.exp_6), 
                var(subject_13.exp_6), var(subject_14.exp_6), var(subject_15.exp_6), 
                var(subject_16.exp_6), var(subject_17.exp_6), var(subject_18.exp_6), 
                var(subject_19.exp_6), var(subject_20.exp_6), var(subject_21.exp_6),
                var(subject_22.exp_6), var(subject_23.exp_6), var(subject_24.exp_6), 
                var(subject_25.exp_6), var(subject_26.exp_6), var(subject_27.exp_6),
                var(subject_28.exp_6), var(subject_29.exp_6), var(subject_30.exp_6),
                var(subject_31.exp_6), var(subject_32.exp_6), var(subject_33.exp_6),
                var(subject_34.exp_6), var(subject_35.exp_6), var(subject_36.exp_6))

var.exp_6 <- var(varS.exp_6)
avg.var.exp_6 <- mean(varS.exp_6)

## experiment 7
varS.exp_7 <- c(var(subject_1.exp_7), var(subject_2.exp_7), var(subject_3.exp_7), 
                var(subject_4.exp_7), var(subject_5.exp_7), var(subject_6.exp_7), 
                var(subject_7.exp_7), var(subject_8.exp_7), var(subject_9.exp_7),
                var(subject_10.exp_7), var(subject_11.exp_7), var(subject_12.exp_7), 
                var(subject_13.exp_7), var(subject_14.exp_7), var(subject_15.exp_7), 
                var(subject_16.exp_7), var(subject_17.exp_7), var(subject_18.exp_7), 
                var(subject_19.exp_7), var(subject_20.exp_7), var(subject_21.exp_7),
                var(subject_22.exp_7), var(subject_23.exp_7), var(subject_24.exp_7), 
                var(subject_25.exp_7), var(subject_26.exp_7), var(subject_27.exp_7),
                var(subject_28.exp_7), var(subject_29.exp_7), var(subject_30.exp_7),
                var(subject_31.exp_7), var(subject_32.exp_7), var(subject_33.exp_7),
                var(subject_34.exp_7), var(subject_35.exp_7), var(subject_36.exp_7))

var.exp_7 <- var(varS.exp_7)
avg.var.exp_7 <- mean(varS.exp_7)

## experiment 8

varS.exp_8 <- c(var(subject_1.exp_8), var(subject_2.exp_8), var(subject_3.exp_8), 
                var(subject_4.exp_8), var(subject_5.exp_8), var(subject_6.exp_8), 
                var(subject_7.exp_8), var(subject_8.exp_8), var(subject_9.exp_8), 
                var(subject_10.exp_8), var(subject_11.exp_8), var(subject_12.exp_8), 
                var(subject_13.exp_8), var(subject_14.exp_8), var(subject_15.exp_8), 
                var(subject_16.exp_8), var(subject_17.exp_8), var(subject_18.exp_8), 
                var(subject_19.exp_8), var(subject_20.exp_8), var(subject_21.exp_8),
                var(subject_22.exp_8), var(subject_23.exp_8), var(subject_24.exp_8), 
                var(subject_25.exp_8), var(subject_26.exp_8), var(subject_27.exp_8),
                var(subject_28.exp_8), var(subject_29.exp_8), var(subject_30.exp_8),
                var(subject_31.exp_8), var(subject_32.exp_8), var(subject_33.exp_8),
                var(subject_34.exp_8), var(subject_35.exp_8), var(subject_36.exp_8))

var.exp_8 <- var(varS.exp_8)
avg.var.exp_8 <- mean(varS.exp_8)

## experiment 9

varS.exp_9 <- c(var(subject_1.exp_9), var(subject_2.exp_9), var(subject_3.exp_9), 
                var(subject_4.exp_9), var(subject_5.exp_9), var(subject_6.exp_9), 
                var(subject_7.exp_9), var(subject_8.exp_9), var(subject_9.exp_9), 
                var(subject_10.exp_9), var(subject_11.exp_9), var(subject_12.exp_9), 
                var(subject_13.exp_9), var(subject_14.exp_9), var(subject_15.exp_9), 
                var(subject_16.exp_9), var(subject_17.exp_9), var(subject_18.exp_9), 
                var(subject_19.exp_9), var(subject_20.exp_9), var(subject_21.exp_9),
                var(subject_22.exp_9), var(subject_23.exp_9), var(subject_24.exp_9), 
                var(subject_25.exp_9), var(subject_26.exp_9), var(subject_27.exp_9),
                var(subject_28.exp_9), var(subject_29.exp_9), var(subject_30.exp_9),
                var(subject_31.exp_9), var(subject_32.exp_9), var(subject_33.exp_9),
                var(subject_34.exp_9), var(subject_35.exp_9), var(subject_36.exp_9))

var.exp_9 <- var(varS.exp_9)
avg.var.exp_9 <- mean(varS.exp_9)

## experiment 10

varS.exp_10 <- c(var(subject_1.exp_10), var(subject_2.exp_10), var(subject_3.exp_10), 
                 var(subject_4.exp_10), var(subject_5.exp_10), var(subject_6.exp_10), 
                 var(subject_7.exp_10), var(subject_8.exp_10), var(subject_9.exp_10), 
                 var(subject_10.exp_10), var(subject_11.exp_10), var(subject_12.exp_10), 
                 var(subject_13.exp_10), var(subject_14.exp_10), var(subject_15.exp_10), 
                 var(subject_16.exp_10), var(subject_17.exp_10), var(subject_18.exp_10), 
                 var(subject_19.exp_10), var(subject_20.exp_10), var(subject_21.exp_10),
                 var(subject_22.exp_10), var(subject_23.exp_10), var(subject_24.exp_10), 
                 var(subject_25.exp_10), var(subject_26.exp_10), var(subject_27.exp_10),
                 var(subject_28.exp_10), var(subject_29.exp_10), var(subject_30.exp_10),
                 var(subject_31.exp_10), var(subject_32.exp_10), var(subject_33.exp_10),
                 var(subject_34.exp_10), var(subject_35.exp_10), var(subject_36.exp_10))

var.exp_10 <- var(varS.exp_10)
avg.var.exp_10 <- mean(varS.exp_10)

## experiment 11

varS.exp_11 <- c(var(subject_1.exp_11), var(subject_2.exp_11), var(subject_3.exp_11), 
                 var(subject_4.exp_11), var(subject_5.exp_11), var(subject_6.exp_11), 
                 var(subject_7.exp_11), var(subject_8.exp_11), var(subject_9.exp_11), 
                 var(subject_10.exp_11), var(subject_11.exp_11), var(subject_12.exp_11), 
                 var(subject_13.exp_11), var(subject_14.exp_11), var(subject_15.exp_11), 
                 var(subject_16.exp_11), var(subject_17.exp_11), var(subject_18.exp_11), 
                 var(subject_19.exp_11), var(subject_20.exp_11), var(subject_21.exp_11),
                 var(subject_22.exp_11), var(subject_23.exp_11), var(subject_24.exp_11), 
                 var(subject_25.exp_11), var(subject_26.exp_11), var(subject_27.exp_11),
                 var(subject_28.exp_11), var(subject_29.exp_11), var(subject_30.exp_11),
                 var(subject_31.exp_11), var(subject_32.exp_11), var(subject_33.exp_11),
                 var(subject_34.exp_11), var(subject_35.exp_11), var(subject_36.exp_11))

var.exp_11 <- var(varS.exp_11)
avg.var.exp_11 <- mean(varS.exp_11)

## experiment 12

varS.exp_12 <- c(var(subject_1.exp_12), var(subject_2.exp_12), var(subject_3.exp_12), 
                 var(subject_4.exp_12), var(subject_5.exp_12), var(subject_6.exp_12), 
                 var(subject_7.exp_12), var(subject_8.exp_12), var(subject_9.exp_12), 
                 var(subject_10.exp_12), var(subject_11.exp_12), var(subject_12.exp_12), 
                 var(subject_13.exp_12), var(subject_14.exp_12), var(subject_15.exp_12), 
                 var(subject_16.exp_12), var(subject_17.exp_12), var(subject_18.exp_12), 
                 var(subject_19.exp_12), var(subject_20.exp_12), var(subject_21.exp_12),
                 var(subject_22.exp_12), var(subject_23.exp_12), var(subject_24.exp_12), 
                 var(subject_25.exp_12), var(subject_26.exp_12), var(subject_27.exp_12),
                 var(subject_28.exp_12), var(subject_29.exp_12), var(subject_30.exp_12),
                 var(subject_31.exp_12), var(subject_32.exp_12), var(subject_33.exp_12),
                 var(subject_34.exp_12), var(subject_35.exp_12), var(subject_36.exp_12))

var.exp_12 <- var(varS.exp_2)
avg.var.exp_12 <- mean(varS.exp_12)

## experiment 13

varS.exp_13 <- c(var(subject_1.exp_13), var(subject_2.exp_13), var(subject_3.exp_13), 
                 var(subject_4.exp_13), var(subject_5.exp_13), var(subject_6.exp_13), 
                 var(subject_7.exp_13), var(subject_8.exp_13), var(subject_9.exp_13), 
                 var(subject_10.exp_13), var(subject_11.exp_13), var(subject_12.exp_13), 
                 var(subject_13.exp_13), var(subject_14.exp_13), var(subject_15.exp_13), 
                 var(subject_16.exp_13), var(subject_17.exp_13), var(subject_18.exp_13), 
                 var(subject_19.exp_13), var(subject_20.exp_13), var(subject_21.exp_13),
                 var(subject_22.exp_13), var(subject_23.exp_13), var(subject_24.exp_13), 
                 var(subject_25.exp_13), var(subject_26.exp_13), var(subject_27.exp_13),
                 var(subject_28.exp_13), var(subject_29.exp_13), var(subject_30.exp_13),
                 var(subject_31.exp_13), var(subject_32.exp_13), var(subject_33.exp_13),
                 var(subject_34.exp_13), var(subject_35.exp_13), var(subject_36.exp_13))

var.exp_13 <- var(varS.exp_13)
avg.var.exp_13 <- mean(varS.exp_13)

## experiment 14
varS.exp_14 <- c(var(subject_1.exp_14), mean(subject_2.exp_14), var(subject_3.exp_14), 
                 var(subject_4.exp_14), mean(subject_5.exp_14), var(subject_6.exp_14), 
                 var(subject_7.exp_14), mean(subject_8.exp_14), var(subject_9.exp_14), 
                 var(subject_10.exp_14), mean(subject_11.exp_14), var(subject_12.exp_14), 
                 var(subject_13.exp_14), mean(subject_14.exp_14), var(subject_15.exp_14), 
                 var(subject_16.exp_14), mean(subject_17.exp_14), var(subject_18.exp_14), 
                 var(subject_19.exp_14), mean(subject_20.exp_14), var(subject_21.exp_14),
                 var(subject_22.exp_14), mean(subject_23.exp_14), var(subject_24.exp_14), 
                 var(subject_25.exp_14), mean(subject_26.exp_14), var(subject_27.exp_14),
                 var(subject_28.exp_14), mean(subject_29.exp_14), var(subject_30.exp_14),
                 var(subject_31.exp_14), mean(subject_32.exp_14), var(subject_33.exp_14),
                 var(subject_34.exp_14), mean(subject_35.exp_14), var(subject_36.exp_14))

var.exp_14 <- var(varS.exp_14)
avg.var.exp_14 <- mean(varS.exp_14)

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

### time series plots ---------------------------------------------------------

plot(subject_1.exp_2)
lines(subject_1.exp_1, col = 2)
lines(subject_2.exp_1, col = 2)
lines(subject_3.exp_1, col = 2)
#lines(subject_4.exp_1, col = 2)
#lines(subject_5.exp_1, col = 2)
#lines(subject_6.exp_1, col = 2)
#lines(subject_7.exp_1, col = 2)
lines(subject_2.exp_2)
lines(subject_3.exp_2)
#lines(subject_4.exp_2)
#lines(subject_5.exp_2)
#lines(subject_6.exp_2)
#lines(subject_7.exp_2)

plot(subject_1.exp_3)
lines(subject_1.exp_4)

