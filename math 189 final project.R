## final project
Relative_Alpha_Power_data <- read_excel("~/Desktop/math 189/final project
                                        /Relative Alpha Power.xlsx", sheet 
                                        = "Sheet1", col_names = TRUE)


### experiment time series for subjects 1 thru 36, experiments 1 thru 14 ------

## subject No. 1
subject_1 <- t(Relative_Alpha_Power_data[1,])

subject_1.exp_1 <- ts(as.numeric(subject_1[2:121]))
subject_1.exp_2 <- ts(as.numeric(subject_1[122:241]))
subject_1.exp_3 <- ts(as.numeric(subject_1[242:481]))
subject_1.exp_4 <- ts(as.numeric(subject_1[482:721]))
subject_1.exp_5 <- ts(as.numeric(subject_1[722:961]))
subject_1.exp_6 <- ts(as.numeric(subject_1[962:1201]))
subject_1.exp_7 <- ts(as.numeric(subject_1[1202:1441]))
subject_1.exp_8 <- ts(as.numeric(subject_1[1442:1681]))
subject_1.exp_9 <- ts(as.numeric(subject_1[1682:1921]))
subject_1.exp_10 <- ts(as.numeric(subject_1[1922:2161]))
subject_1.exp_11 <- ts(as.numeric(subject_1[2162:2401]))
subject_1.exp_12 <- ts(as.numeric(subject_1[2402:2641]))
subject_1.exp_13 <- ts(as.numeric(subject_1[2642:2881]))
subject_1.exp_14 <- ts(as.numeric(subject_1[2882:3121]))

## subject No. 2
subject_2 <- t(Relative_Alpha_Power_data[2,])

subject_2.exp_1 <- ts(as.numeric(subject_2[2:121]))
subject_2.exp_2 <- ts(as.numeric(subject_2[122:241]))
subject_2.exp_3 <- ts(as.numeric(subject_2[242:481]))
subject_2.exp_4 <- ts(as.numeric(subject_2[482:721]))
subject_2.exp_5 <- ts(as.numeric(subject_2[722:961]))
subject_2.exp_6 <- ts(as.numeric(subject_2[962:1201]))
subject_2.exp_7 <- ts(as.numeric(subject_2[1202:1441]))
subject_2.exp_8 <- ts(as.numeric(subject_2[1442:1681]))
subject_2.exp_9 <- ts(as.numeric(subject_2[1682:1921]))
subject_2.exp_10 <- ts(as.numeric(subject_2[1922:2161]))
subject_2.exp_11 <- ts(as.numeric(subject_2[2162:2401]))
subject_2.exp_12 <- ts(as.numeric(subject_2[2402:2641]))
subject_2.exp_13 <- ts(as.numeric(subject_2[2642:2881]))
subject_2.exp_14 <- ts(as.numeric(subject_2[2882:3121]))

## subject No. 3
subject_3 <- t(Relative_Alpha_Power_data[3,])

subject_3.exp_1 <- ts(as.numeric(subject_3[2:121]))
subject_3.exp_2 <- ts(as.numeric(subject_3[122:241]))
subject_3.exp_3 <- ts(as.numeric(subject_3[242:481]))
subject_3.exp_4 <- ts(as.numeric(subject_3[482:721]))
subject_3.exp_5 <- ts(as.numeric(subject_3[722:961]))
subject_3.exp_6 <- ts(as.numeric(subject_3[962:1201]))
subject_3.exp_7 <- ts(as.numeric(subject_3[1202:1441]))
subject_3.exp_8 <- ts(as.numeric(subject_3[1442:1681]))
subject_3.exp_9 <- ts(as.numeric(subject_3[1682:1921]))
subject_3.exp_10 <- ts(as.numeric(subject_3[1922:2161]))
subject_3.exp_11 <- ts(as.numeric(subject_3[2162:2401]))
subject_3.exp_12 <- ts(as.numeric(subject_3[2402:2641]))
subject_3.exp_13 <- ts(as.numeric(subject_3[2642:2881]))
subject_3.exp_14 <- ts(as.numeric(subject_3[2882:3121]))

## subject No. 4
subject_4 <- t(Relative_Alpha_Power_data[4,])

subject_4.exp_1 <- ts(as.numeric(subject_4[2:121]))
subject_4.exp_2 <- ts(as.numeric(subject_4[122:241]))
subject_4.exp_3 <- ts(as.numeric(subject_4[242:481]))
subject_4.exp_4 <- ts(as.numeric(subject_4[482:721]))
subject_4.exp_5 <- ts(as.numeric(subject_4[722:961]))
subject_4.exp_6 <- ts(as.numeric(subject_4[962:1201]))
subject_4.exp_7 <- ts(as.numeric(subject_4[1202:1441]))
subject_4.exp_8 <- ts(as.numeric(subject_4[1442:1681]))
subject_4.exp_9 <- ts(as.numeric(subject_4[1682:1921]))
subject_4.exp_10 <- ts(as.numeric(subject_4[1922:2161]))
subject_4.exp_11 <- ts(as.numeric(subject_4[2162:2401]))
subject_4.exp_12 <- ts(as.numeric(subject_4[2402:2641]))
subject_4.exp_13 <- ts(as.numeric(subject_4[2642:2881]))
subject_4.exp_14 <- ts(as.numeric(subject_4[2882:3121]))

## subject No. 5
subject_5 <- t(Relative_Alpha_Power_data[5,])

subject_5.exp_1 <- ts(as.numeric(subject_5[2:121]))
subject_5.exp_2 <- ts(as.numeric(subject_5[122:241]))
subject_5.exp_3 <- ts(as.numeric(subject_5[242:481]))
subject_5.exp_4 <- ts(as.numeric(subject_5[482:721]))
subject_5.exp_5 <- ts(as.numeric(subject_5[722:961]))
subject_5.exp_6 <- ts(as.numeric(subject_5[962:1201]))
subject_5.exp_7 <- ts(as.numeric(subject_5[1202:1441]))
subject_5.exp_8 <- ts(as.numeric(subject_5[1442:1681]))
subject_5.exp_9 <- ts(as.numeric(subject_5[1682:1921]))
subject_5.exp_10 <- ts(as.numeric(subject_5[1922:2161]))
subject_5.exp_11 <- ts(as.numeric(subject_5[2162:2401]))
subject_5.exp_12 <- ts(as.numeric(subject_5[2402:2641]))
subject_5.exp_13 <- ts(as.numeric(subject_5[2642:2881]))
subject_5.exp_14 <- ts(as.numeric(subject_5[2882:3121]))

## subject No. 6
subject_6 <- t(Relative_Alpha_Power_data[6,])

subject_6.exp_1 <- ts(as.numeric(subject_6[2:121]))
subject_6.exp_2 <- ts(as.numeric(subject_6[122:241]))
subject_6.exp_3 <- ts(as.numeric(subject_6[242:481]))
subject_6.exp_4 <- ts(as.numeric(subject_6[482:721]))
subject_6.exp_5 <- ts(as.numeric(subject_6[722:961]))
subject_6.exp_6 <- ts(as.numeric(subject_6[962:1201]))
subject_6.exp_7 <- ts(as.numeric(subject_6[1202:1441]))
subject_6.exp_8 <- ts(as.numeric(subject_6[1442:1681]))
subject_6.exp_9 <- ts(as.numeric(subject_6[1682:1921]))
subject_6.exp_10 <- ts(as.numeric(subject_6[1922:2161]))
subject_6.exp_11 <- ts(as.numeric(subject_6[2162:2401]))
subject_6.exp_12 <- ts(as.numeric(subject_6[2402:2641]))
subject_6.exp_13 <- ts(as.numeric(subject_6[2642:2881]))
subject_6.exp_14 <- ts(as.numeric(subject_6[2882:3121]))

## subject No. 7
subject_7 <- t(Relative_Alpha_Power_data[7,])

subject_7.exp_1 <- ts(as.numeric(subject_7[2:121]))
subject_7.exp_2 <- ts(as.numeric(subject_7[122:241]))
subject_7.exp_3 <- ts(as.numeric(subject_7[242:481]))
subject_7.exp_4 <- ts(as.numeric(subject_7[482:721]))
subject_7.exp_5 <- ts(as.numeric(subject_7[722:961]))
subject_7.exp_6 <- ts(as.numeric(subject_7[962:1201]))
subject_7.exp_7 <- ts(as.numeric(subject_7[1202:1441]))
subject_7.exp_8 <- ts(as.numeric(subject_7[1442:1681]))
subject_7.exp_9 <- ts(as.numeric(subject_7[1682:1921]))
subject_7.exp_10 <- ts(as.numeric(subject_7[1922:2161]))
subject_7.exp_11 <- ts(as.numeric(subject_7[2162:2401]))
subject_7.exp_12 <- ts(as.numeric(subject_7[2402:2641]))
subject_7.exp_13 <- ts(as.numeric(subject_7[2642:2881]))
subject_7.exp_14 <- ts(as.numeric(subject_7[2882:3121]))

## subject No. 8
subject_8 <- t(Relative_Alpha_Power_data[8,])

subject_8.exp_1 <- ts(as.numeric(subject_8[2:121]))
subject_8.exp_2 <- ts(as.numeric(subject_8[122:241]))
subject_8.exp_3 <- ts(as.numeric(subject_8[242:481]))
subject_8.exp_4 <- ts(as.numeric(subject_8[482:721]))
subject_8.exp_5 <- ts(as.numeric(subject_8[722:961]))
subject_8.exp_6 <- ts(as.numeric(subject_8[962:1201]))
subject_8.exp_7 <- ts(as.numeric(subject_8[1202:1441]))
subject_8.exp_8 <- ts(as.numeric(subject_8[1442:1681]))
subject_8.exp_9 <- ts(as.numeric(subject_8[1682:1921]))
subject_8.exp_10 <- ts(as.numeric(subject_8[1922:2161]))
subject_8.exp_11 <- ts(as.numeric(subject_8[2162:2401]))
subject_8.exp_12 <- ts(as.numeric(subject_8[2402:2641]))
subject_8.exp_13 <- ts(as.numeric(subject_8[2642:2881]))
subject_8.exp_14 <- ts(as.numeric(subject_8[2882:3121]))

## subject No. 9
subject_9 <- t(Relative_Alpha_Power_data[9,])

subject_9.exp_1 <- ts(as.numeric(subject_9[2:121]))
subject_9.exp_2 <- ts(as.numeric(subject_9[122:241]))
subject_9.exp_3 <- ts(as.numeric(subject_9[242:481]))
subject_9.exp_4 <- ts(as.numeric(subject_9[482:721]))
subject_9.exp_5 <- ts(as.numeric(subject_9[722:961]))
subject_9.exp_6 <- ts(as.numeric(subject_9[962:1201]))
subject_9.exp_7 <- ts(as.numeric(subject_9[1202:1441]))
subject_9.exp_8 <- ts(as.numeric(subject_9[1442:1681]))
subject_9.exp_9 <- ts(as.numeric(subject_9[1682:1921]))
subject_9.exp_10 <- ts(as.numeric(subject_9[1922:2161]))
subject_9.exp_11 <- ts(as.numeric(subject_9[2162:2401]))
subject_9.exp_12 <- ts(as.numeric(subject_9[2402:2641]))
subject_9.exp_13 <- ts(as.numeric(subject_9[2642:2881]))
subject_9.exp_14 <- ts(as.numeric(subject_9[2882:3121]))

## subject No. 10
subject_10 <- t(Relative_Alpha_Power_data[10,])

subject_10.exp_1 <- ts(as.numeric(subject_10[2:121]))
subject_10.exp_2 <- ts(as.numeric(subject_10[122:241]))
subject_10.exp_3 <- ts(as.numeric(subject_10[242:481]))
subject_10.exp_4 <- ts(as.numeric(subject_10[482:721]))
subject_10.exp_5 <- ts(as.numeric(subject_10[722:961]))
subject_10.exp_6 <- ts(as.numeric(subject_10[962:1201]))
subject_10.exp_7 <- ts(as.numeric(subject_10[1202:1441]))
subject_10.exp_8 <- ts(as.numeric(subject_10[1442:1681]))
subject_10.exp_9 <- ts(as.numeric(subject_10[1682:1921]))
subject_10.exp_10 <- ts(as.numeric(subject_10[1922:2161]))
subject_10.exp_11 <- ts(as.numeric(subject_10[2162:2401]))
subject_10.exp_12 <- ts(as.numeric(subject_10[2402:2641]))
subject_10.exp_13 <- ts(as.numeric(subject_10[2642:2881]))
subject_10.exp_14 <- ts(as.numeric(subject_10[2882:3121]))

## subject No. 11
subject_11 <- t(Relative_Alpha_Power_data[11,])

subject_11.exp_1 <- ts(as.numeric(subject_11[2:121]))
subject_11.exp_2 <- ts(as.numeric(subject_11[122:241]))
subject_11.exp_3 <- ts(as.numeric(subject_11[242:481]))
subject_11.exp_4 <- ts(as.numeric(subject_11[482:721]))
subject_11.exp_5 <- ts(as.numeric(subject_11[722:961]))
subject_11.exp_6 <- ts(as.numeric(subject_11[962:1201]))
subject_11.exp_7 <- ts(as.numeric(subject_11[1202:1441]))
subject_11.exp_8 <- ts(as.numeric(subject_11[1442:1681]))
subject_11.exp_9 <- ts(as.numeric(subject_11[1682:1921]))
subject_11.exp_10 <- ts(as.numeric(subject_11[1922:2161]))
subject_11.exp_11 <- ts(as.numeric(subject_11[2162:2401]))
subject_11.exp_12 <- ts(as.numeric(subject_11[2402:2641]))
subject_11.exp_13 <- ts(as.numeric(subject_11[2642:2881]))
subject_11.exp_14 <- ts(as.numeric(subject_11[2882:3121]))

## subject No. 12
subject_12 <- t(Relative_Alpha_Power_data[12,])

subject_12.exp_1 <- ts(as.numeric(subject_12[2:121]))
subject_12.exp_2 <- ts(as.numeric(subject_12[122:241]))
subject_12.exp_3 <- ts(as.numeric(subject_12[242:481]))
subject_12.exp_4 <- ts(as.numeric(subject_12[482:721]))
subject_12.exp_5 <- ts(as.numeric(subject_12[722:961]))
subject_12.exp_6 <- ts(as.numeric(subject_12[962:1201]))
subject_12.exp_7 <- ts(as.numeric(subject_12[1202:1441]))
subject_12.exp_8 <- ts(as.numeric(subject_12[1442:1681]))
subject_12.exp_9 <- ts(as.numeric(subject_12[1682:1921]))
subject_12.exp_10 <- ts(as.numeric(subject_12[1922:2161]))
subject_12.exp_11 <- ts(as.numeric(subject_12[2162:2401]))
subject_12.exp_12 <- ts(as.numeric(subject_12[2402:2641]))
subject_12.exp_13 <- ts(as.numeric(subject_12[2642:2881]))
subject_12.exp_14 <- ts(as.numeric(subject_12[2882:3121]))

## subject No. 13
subject_13 <- t(Relative_Alpha_Power_data[13,])

subject_13.exp_1 <- ts(as.numeric(subject_13[2:121]))
subject_13.exp_2 <- ts(as.numeric(subject_13[122:241]))
subject_13.exp_3 <- ts(as.numeric(subject_13[242:481]))
subject_13.exp_4 <- ts(as.numeric(subject_13[482:721]))
subject_13.exp_5 <- ts(as.numeric(subject_13[722:961]))
subject_13.exp_6 <- ts(as.numeric(subject_13[962:1201]))
subject_13.exp_7 <- ts(as.numeric(subject_13[1202:1441]))
subject_13.exp_8 <- ts(as.numeric(subject_13[1442:1681]))
subject_13.exp_9 <- ts(as.numeric(subject_13[1682:1921]))
subject_13.exp_10 <- ts(as.numeric(subject_13[1922:2161]))
subject_13.exp_11 <- ts(as.numeric(subject_13[2162:2401]))
subject_13.exp_12 <- ts(as.numeric(subject_13[2402:2641]))
subject_13.exp_13 <- ts(as.numeric(subject_13[2642:2881]))
subject_13.exp_14 <- ts(as.numeric(subject_13[2882:3121]))

## subject No. 14
subject_14 <- t(Relative_Alpha_Power_data[14,])

subject_14.exp_1 <- ts(as.numeric(subject_14[2:121]))
subject_14.exp_2 <- ts(as.numeric(subject_14[122:241]))
subject_14.exp_3 <- ts(as.numeric(subject_14[242:481]))
subject_14.exp_4 <- ts(as.numeric(subject_14[482:721]))
subject_14.exp_5 <- ts(as.numeric(subject_14[722:961]))
subject_14.exp_6 <- ts(as.numeric(subject_14[962:1201]))
subject_14.exp_7 <- ts(as.numeric(subject_14[1202:1441]))
subject_14.exp_8 <- ts(as.numeric(subject_14[1442:1681]))
subject_14.exp_9 <- ts(as.numeric(subject_14[1682:1921]))
subject_14.exp_10 <- ts(as.numeric(subject_14[1922:2161]))
subject_14.exp_11 <- ts(as.numeric(subject_14[2162:2401]))
subject_14.exp_12 <- ts(as.numeric(subject_14[2402:2641]))
subject_14.exp_13 <- ts(as.numeric(subject_14[2642:2881]))
subject_14.exp_14 <- ts(as.numeric(subject_14[2882:3121]))

## subject No. 15
subject_15 <- t(Relative_Alpha_Power_data[15,])

subject_15.exp_1 <- ts(as.numeric(subject_15[2:121]))
subject_15.exp_2 <- ts(as.numeric(subject_15[122:241]))
subject_15.exp_3 <- ts(as.numeric(subject_15[242:481]))
subject_15.exp_4 <- ts(as.numeric(subject_15[482:721]))
subject_15.exp_5 <- ts(as.numeric(subject_15[722:961]))
subject_15.exp_6 <- ts(as.numeric(subject_15[962:1201]))
subject_15.exp_7 <- ts(as.numeric(subject_15[1202:1441]))
subject_15.exp_8 <- ts(as.numeric(subject_15[1442:1681]))
subject_15.exp_9 <- ts(as.numeric(subject_15[1682:1921]))
subject_15.exp_10 <- ts(as.numeric(subject_15[1922:2161]))
subject_15.exp_11 <- ts(as.numeric(subject_15[2162:2401]))
subject_15.exp_12 <- ts(as.numeric(subject_15[2402:2641]))
subject_15.exp_13 <- ts(as.numeric(subject_15[2642:2881]))
subject_15.exp_14 <- ts(as.numeric(subject_15[2882:3121]))

## subject No. 16
subject_16 <- t(Relative_Alpha_Power_data[16,])

subject_16.exp_1 <- ts(as.numeric(subject_16[2:121]))
subject_16.exp_2 <- ts(as.numeric(subject_16[122:241]))
subject_16.exp_3 <- ts(as.numeric(subject_16[242:481]))
subject_16.exp_4 <- ts(as.numeric(subject_16[482:721]))
subject_16.exp_5 <- ts(as.numeric(subject_16[722:961]))
subject_16.exp_6 <- ts(as.numeric(subject_16[962:1201]))
subject_16.exp_7 <- ts(as.numeric(subject_16[1202:1441]))
subject_16.exp_8 <- ts(as.numeric(subject_16[1442:1681]))
subject_16.exp_9 <- ts(as.numeric(subject_16[1682:1921]))
subject_16.exp_10 <- ts(as.numeric(subject_16[1922:2161]))
subject_16.exp_11 <- ts(as.numeric(subject_16[2162:2401]))
subject_16.exp_12 <- ts(as.numeric(subject_16[2402:2641]))
subject_16.exp_13 <- ts(as.numeric(subject_16[2642:2881]))
subject_16.exp_14 <- ts(as.numeric(subject_16[2882:3121]))

## subject No. 17
subject_17 <- t(Relative_Alpha_Power_data[17,])

subject_17.exp_1 <- ts(as.numeric(subject_17[2:121]))
subject_17.exp_2 <- ts(as.numeric(subject_17[122:241]))
subject_17.exp_3 <- ts(as.numeric(subject_17[242:481]))
subject_17.exp_4 <- ts(as.numeric(subject_17[482:721]))
subject_17.exp_5 <- ts(as.numeric(subject_17[722:961]))
subject_17.exp_6 <- ts(as.numeric(subject_17[962:1201]))
subject_17.exp_7 <- ts(as.numeric(subject_17[1202:1441]))
subject_17.exp_8 <- ts(as.numeric(subject_17[1442:1681]))
subject_17.exp_9 <- ts(as.numeric(subject_17[1682:1921]))
subject_17.exp_10 <- ts(as.numeric(subject_17[1922:2161]))
subject_17.exp_11 <- ts(as.numeric(subject_17[2162:2401]))
subject_17.exp_12 <- ts(as.numeric(subject_17[2402:2641]))
subject_17.exp_13 <- ts(as.numeric(subject_17[2642:2881]))
subject_17.exp_14 <- ts(as.numeric(subject_17[2882:3121]))

## subject No. 18
subject_18 <- t(Relative_Alpha_Power_data[18,])

subject_18.exp_1 <- ts(as.numeric(subject_18[2:121]))
subject_18.exp_2 <- ts(as.numeric(subject_18[122:241]))
subject_18.exp_3 <- ts(as.numeric(subject_18[242:481]))
subject_18.exp_4 <- ts(as.numeric(subject_18[482:721]))
subject_18.exp_5 <- ts(as.numeric(subject_18[722:961]))
subject_18.exp_6 <- ts(as.numeric(subject_18[962:1201]))
subject_18.exp_7 <- ts(as.numeric(subject_18[1202:1441]))
subject_18.exp_8 <- ts(as.numeric(subject_18[1442:1681]))
subject_18.exp_9 <- ts(as.numeric(subject_18[1682:1921]))
subject_18.exp_10 <- ts(as.numeric(subject_18[1922:2161]))
subject_18.exp_11 <- ts(as.numeric(subject_18[2162:2401]))
subject_18.exp_12 <- ts(as.numeric(subject_18[2402:2641]))
subject_18.exp_13 <- ts(as.numeric(subject_18[2642:2881]))
subject_18.exp_14 <- ts(as.numeric(subject_18[2882:3121]))

## subject No. 19
subject_19 <- t(Relative_Alpha_Power_data[19,])

subject_19.exp_1 <- ts(as.numeric(subject_19[2:121]))
subject_19.exp_2 <- ts(as.numeric(subject_19[122:241]))
subject_19.exp_3 <- ts(as.numeric(subject_19[242:481]))
subject_19.exp_4 <- ts(as.numeric(subject_19[482:721]))
subject_19.exp_5 <- ts(as.numeric(subject_19[722:961]))
subject_19.exp_6 <- ts(as.numeric(subject_19[962:1201]))
subject_19.exp_7 <- ts(as.numeric(subject_19[1202:1441]))
subject_19.exp_8 <- ts(as.numeric(subject_19[1442:1681]))
subject_19.exp_9 <- ts(as.numeric(subject_19[1682:1921]))
subject_19.exp_10 <- ts(as.numeric(subject_19[1922:2161]))
subject_19.exp_11 <- ts(as.numeric(subject_19[2162:2401]))
subject_19.exp_12 <- ts(as.numeric(subject_19[2402:2641]))
subject_19.exp_13 <- ts(as.numeric(subject_19[2642:2881]))
subject_19.exp_14 <- ts(as.numeric(subject_19[2882:3121]))

## subject No. 20
subject_20 <- t(Relative_Alpha_Power_data[20,])

subject_20.exp_1 <- ts(as.numeric(subject_20[2:121]))
subject_20.exp_2 <- ts(as.numeric(subject_20[122:241]))
subject_20.exp_3 <- ts(as.numeric(subject_20[242:481]))
subject_20.exp_4 <- ts(as.numeric(subject_20[482:721]))
subject_20.exp_5 <- ts(as.numeric(subject_20[722:961]))
subject_20.exp_6 <- ts(as.numeric(subject_20[962:1201]))
subject_20.exp_7 <- ts(as.numeric(subject_20[1202:1441]))
subject_20.exp_8 <- ts(as.numeric(subject_20[1442:1681]))
subject_20.exp_9 <- ts(as.numeric(subject_20[1682:1921]))
subject_20.exp_10 <- ts(as.numeric(subject_20[1922:2161]))
subject_20.exp_11 <- ts(as.numeric(subject_20[2162:2401]))
subject_20.exp_12 <- ts(as.numeric(subject_20[2402:2641]))
subject_20.exp_13 <- ts(as.numeric(subject_20[2642:2881]))
subject_20.exp_14 <- ts(as.numeric(subject_20[2882:3121]))

## subject No. 21
subject_21 <- t(Relative_Alpha_Power_data[21,])

subject_21.exp_1 <- ts(as.numeric(subject_21[2:121]))
subject_21.exp_2 <- ts(as.numeric(subject_21[122:241]))
subject_21.exp_3 <- ts(as.numeric(subject_21[242:481]))
subject_21.exp_4 <- ts(as.numeric(subject_21[482:721]))
subject_21.exp_5 <- ts(as.numeric(subject_21[722:961]))
subject_21.exp_6 <- ts(as.numeric(subject_21[962:1201]))
subject_21.exp_7 <- ts(as.numeric(subject_21[1202:1441]))
subject_21.exp_8 <- ts(as.numeric(subject_21[1442:1681]))
subject_21.exp_9 <- ts(as.numeric(subject_21[1682:1921]))
subject_21.exp_10 <- ts(as.numeric(subject_21[1922:2161]))
subject_21.exp_11 <- ts(as.numeric(subject_21[2162:2401]))
subject_21.exp_12 <- ts(as.numeric(subject_21[2402:2641]))
subject_21.exp_13 <- ts(as.numeric(subject_21[2642:2881]))
subject_21.exp_14 <- ts(as.numeric(subject_21[2882:3121]))

## subject No. 22
subject_22 <- t(Relative_Alpha_Power_data[22,])

subject_22.exp_1 <- ts(as.numeric(subject_22[2:121]))
subject_22.exp_2 <- ts(as.numeric(subject_22[122:241]))
subject_22.exp_3 <- ts(as.numeric(subject_22[242:481]))
subject_22.exp_4 <- ts(as.numeric(subject_22[482:721]))
subject_22.exp_5 <- ts(as.numeric(subject_22[722:961]))
subject_22.exp_6 <- ts(as.numeric(subject_22[962:1201]))
subject_22.exp_7 <- ts(as.numeric(subject_22[1202:1441]))
subject_22.exp_8 <- ts(as.numeric(subject_22[1442:1681]))
subject_22.exp_9 <- ts(as.numeric(subject_22[1682:1921]))
subject_22.exp_10 <- ts(as.numeric(subject_22[1922:2161]))
subject_22.exp_11 <- ts(as.numeric(subject_22[2162:2401]))
subject_22.exp_12 <- ts(as.numeric(subject_22[2402:2641]))
subject_22.exp_13 <- ts(as.numeric(subject_22[2642:2881]))
subject_22.exp_14 <- ts(as.numeric(subject_22[2882:3121]))

## subject No. 23
subject_23 <- t(Relative_Alpha_Power_data[23,])

subject_23.exp_1 <- ts(as.numeric(subject_23[2:121]))
subject_23.exp_2 <- ts(as.numeric(subject_23[122:241]))
subject_23.exp_3 <- ts(as.numeric(subject_23[242:481]))
subject_23.exp_4 <- ts(as.numeric(subject_23[482:721]))
subject_23.exp_5 <- ts(as.numeric(subject_23[722:961]))
subject_23.exp_6 <- ts(as.numeric(subject_23[962:1201]))
subject_23.exp_7 <- ts(as.numeric(subject_23[1202:1441]))
subject_23.exp_8 <- ts(as.numeric(subject_23[1442:1681]))
subject_23.exp_9 <- ts(as.numeric(subject_23[1682:1921]))
subject_23.exp_10 <- ts(as.numeric(subject_23[1922:2161]))
subject_23.exp_11 <- ts(as.numeric(subject_23[2162:2401]))
subject_23.exp_12 <- ts(as.numeric(subject_23[2402:2641]))
subject_23.exp_13 <- ts(as.numeric(subject_23[2642:2881]))
subject_23.exp_14 <- ts(as.numeric(subject_23[2882:3121]))

## subject No. 24
subject_24 <- t(Relative_Alpha_Power_data[24,])

subject_24.exp_1 <- ts(as.numeric(subject_24[2:121]))
subject_24.exp_2 <- ts(as.numeric(subject_24[122:241]))
subject_24.exp_3 <- ts(as.numeric(subject_24[242:481]))
subject_24.exp_4 <- ts(as.numeric(subject_24[482:721]))
subject_24.exp_5 <- ts(as.numeric(subject_24[722:961]))
subject_24.exp_6 <- ts(as.numeric(subject_24[962:1201]))
subject_24.exp_7 <- ts(as.numeric(subject_24[1202:1441]))
subject_24.exp_8 <- ts(as.numeric(subject_24[1442:1681]))
subject_24.exp_9 <- ts(as.numeric(subject_24[1682:1921]))
subject_24.exp_10 <- ts(as.numeric(subject_24[1922:2161]))
subject_24.exp_11 <- ts(as.numeric(subject_24[2162:2401]))
subject_24.exp_12 <- ts(as.numeric(subject_24[2402:2641]))
subject_24.exp_13 <- ts(as.numeric(subject_24[2642:2881]))
subject_24.exp_14 <- ts(as.numeric(subject_24[2882:3121]))

## subject No. 25
subject_25 <- t(Relative_Alpha_Power_data[25,])

subject_25.exp_1 <- ts(as.numeric(subject_25[2:121]))
subject_25.exp_2 <- ts(as.numeric(subject_25[122:241]))
subject_25.exp_3 <- ts(as.numeric(subject_25[242:481]))
subject_25.exp_4 <- ts(as.numeric(subject_25[482:721]))
subject_25.exp_5 <- ts(as.numeric(subject_25[722:961]))
subject_25.exp_6 <- ts(as.numeric(subject_25[962:1201]))
subject_25.exp_7 <- ts(as.numeric(subject_25[1202:1441]))
subject_25.exp_8 <- ts(as.numeric(subject_25[1442:1681]))
subject_25.exp_9 <- ts(as.numeric(subject_25[1682:1921]))
subject_25.exp_10 <- ts(as.numeric(subject_25[1922:2161]))
subject_25.exp_11 <- ts(as.numeric(subject_25[2162:2401]))
subject_25.exp_12 <- ts(as.numeric(subject_25[2402:2641]))
subject_25.exp_13 <- ts(as.numeric(subject_25[2642:2881]))
subject_25.exp_14 <- ts(as.numeric(subject_25[2882:3121]))

## subject No. 26
subject_26 <- t(Relative_Alpha_Power_data[26,])

subject_26.exp_1 <- ts(as.numeric(subject_26[2:121]))
subject_26.exp_2 <- ts(as.numeric(subject_26[122:241]))
subject_26.exp_3 <- ts(as.numeric(subject_26[242:481]))
subject_26.exp_4 <- ts(as.numeric(subject_26[482:721]))
subject_26.exp_5 <- ts(as.numeric(subject_26[722:961]))
subject_26.exp_6 <- ts(as.numeric(subject_26[962:1201]))
subject_26.exp_7 <- ts(as.numeric(subject_26[1202:1441]))
subject_26.exp_8 <- ts(as.numeric(subject_26[1442:1681]))
subject_26.exp_9 <- ts(as.numeric(subject_26[1682:1921]))
subject_26.exp_10 <- ts(as.numeric(subject_26[1922:2161]))
subject_26.exp_11 <- ts(as.numeric(subject_26[2162:2401]))
subject_26.exp_12 <- ts(as.numeric(subject_26[2402:2641]))
subject_26.exp_13 <- ts(as.numeric(subject_26[2642:2881]))
subject_26.exp_14 <- ts(as.numeric(subject_26[2882:3121]))

## subject No. 27
subject_27 <- t(Relative_Alpha_Power_data[27,])

subject_27.exp_1 <- ts(as.numeric(subject_27[2:121]))
subject_27.exp_2 <- ts(as.numeric(subject_27[122:241]))
subject_27.exp_3 <- ts(as.numeric(subject_27[242:481]))
subject_27.exp_4 <- ts(as.numeric(subject_27[482:721]))
subject_27.exp_5 <- ts(as.numeric(subject_27[722:961]))
subject_27.exp_6 <- ts(as.numeric(subject_27[962:1201]))
subject_27.exp_7 <- ts(as.numeric(subject_27[1202:1441]))
subject_27.exp_8 <- ts(as.numeric(subject_27[1442:1681]))
subject_27.exp_9 <- ts(as.numeric(subject_27[1682:1921]))
subject_27.exp_10 <- ts(as.numeric(subject_27[1922:2161]))
subject_27.exp_11 <- ts(as.numeric(subject_27[2162:2401]))
subject_27.exp_12 <- ts(as.numeric(subject_27[2402:2641]))
subject_27.exp_13 <- ts(as.numeric(subject_27[2642:2881]))
subject_27.exp_14 <- ts(as.numeric(subject_27[2882:3121]))

## subject No. 28
subject_28 <- t(Relative_Alpha_Power_data[28,])

subject_28.exp_1 <- ts(as.numeric(subject_28[2:121]))
subject_28.exp_2 <- ts(as.numeric(subject_28[122:241]))
subject_28.exp_3 <- ts(as.numeric(subject_28[242:481]))
subject_28.exp_4 <- ts(as.numeric(subject_28[482:721]))
subject_28.exp_5 <- ts(as.numeric(subject_28[722:961]))
subject_28.exp_6 <- ts(as.numeric(subject_28[962:1201]))
subject_28.exp_7 <- ts(as.numeric(subject_28[1202:1441]))
subject_28.exp_8 <- ts(as.numeric(subject_28[1442:1681]))
subject_28.exp_9 <- ts(as.numeric(subject_28[1682:1921]))
subject_28.exp_10 <- ts(as.numeric(subject_28[1922:2161]))
subject_28.exp_11 <- ts(as.numeric(subject_28[2162:2401]))
subject_28.exp_12 <- ts(as.numeric(subject_28[2402:2641]))
subject_28.exp_13 <- ts(as.numeric(subject_28[2642:2881]))
subject_28.exp_14 <- ts(as.numeric(subject_28[2882:3121]))

## subject No. 29
subject_29 <- t(Relative_Alpha_Power_data[29,])

subject_29.exp_1 <- ts(as.numeric(subject_29[2:121]))
subject_29.exp_2 <- ts(as.numeric(subject_29[122:241]))
subject_29.exp_3 <- ts(as.numeric(subject_29[242:481]))
subject_29.exp_4 <- ts(as.numeric(subject_29[482:721]))
subject_29.exp_5 <- ts(as.numeric(subject_29[722:961]))
subject_29.exp_6 <- ts(as.numeric(subject_29[962:1201]))
subject_29.exp_7 <- ts(as.numeric(subject_29[1202:1441]))
subject_29.exp_8 <- ts(as.numeric(subject_29[1442:1681]))
subject_29.exp_9 <- ts(as.numeric(subject_29[1682:1921]))
subject_29.exp_10 <- ts(as.numeric(subject_29[1922:2161]))
subject_29.exp_11 <- ts(as.numeric(subject_29[2162:2401]))
subject_29.exp_12 <- ts(as.numeric(subject_29[2402:2641]))
subject_29.exp_13 <- ts(as.numeric(subject_29[2642:2881]))
subject_29.exp_14 <- ts(as.numeric(subject_29[2882:3121]))

## subject No. 30
subject_30 <- t(Relative_Alpha_Power_data[30,])

subject_30.exp_1 <- ts(as.numeric(subject_30[2:121]))
subject_30.exp_2 <- ts(as.numeric(subject_30[122:241]))
subject_30.exp_3 <- ts(as.numeric(subject_30[242:481]))
subject_30.exp_4 <- ts(as.numeric(subject_30[482:721]))
subject_30.exp_5 <- ts(as.numeric(subject_30[722:961]))
subject_30.exp_6 <- ts(as.numeric(subject_30[962:1201]))
subject_30.exp_7 <- ts(as.numeric(subject_30[1202:1441]))
subject_30.exp_8 <- ts(as.numeric(subject_30[1442:1681]))
subject_30.exp_9 <- ts(as.numeric(subject_30[1682:1921]))
subject_30.exp_10 <- ts(as.numeric(subject_30[1922:2161]))
subject_30.exp_11 <- ts(as.numeric(subject_30[2162:2401]))
subject_30.exp_12 <- ts(as.numeric(subject_30[2402:2641]))
subject_30.exp_13 <- ts(as.numeric(subject_30[2642:2881]))
subject_30.exp_14 <- ts(as.numeric(subject_30[2882:3121]))

## subject No. 31
subject_31 <- t(Relative_Alpha_Power_data[31,])

subject_31.exp_1 <- ts(as.numeric(subject_31[2:121]))
subject_31.exp_2 <- ts(as.numeric(subject_31[122:241]))
subject_31.exp_3 <- ts(as.numeric(subject_31[242:481]))
subject_31.exp_4 <- ts(as.numeric(subject_31[482:721]))
subject_31.exp_5 <- ts(as.numeric(subject_31[722:961]))
subject_31.exp_6 <- ts(as.numeric(subject_31[962:1201]))
subject_31.exp_7 <- ts(as.numeric(subject_31[1202:1441]))
subject_31.exp_8 <- ts(as.numeric(subject_31[1442:1681]))
subject_31.exp_9 <- ts(as.numeric(subject_31[1682:1921]))
subject_31.exp_10 <- ts(as.numeric(subject_31[1922:2161]))
subject_31.exp_11 <- ts(as.numeric(subject_31[2162:2401]))
subject_31.exp_12 <- ts(as.numeric(subject_31[2402:2641]))
subject_31.exp_13 <- ts(as.numeric(subject_31[2642:2881]))
subject_31.exp_14 <- ts(as.numeric(subject_31[2882:3121]))

## subject No. 32
subject_32 <- t(Relative_Alpha_Power_data[32,])

subject_32.exp_1 <- ts(as.numeric(subject_32[2:121]))
subject_32.exp_2 <- ts(as.numeric(subject_32[122:241]))
subject_32.exp_3 <- ts(as.numeric(subject_32[242:481]))
subject_32.exp_4 <- ts(as.numeric(subject_32[482:721]))
subject_32.exp_5 <- ts(as.numeric(subject_32[722:961]))
subject_32.exp_6 <- ts(as.numeric(subject_32[962:1201]))
subject_32.exp_7 <- ts(as.numeric(subject_32[1202:1441]))
subject_32.exp_8 <- ts(as.numeric(subject_32[1442:1681]))
subject_32.exp_9 <- ts(as.numeric(subject_32[1682:1921]))
subject_32.exp_10 <- ts(as.numeric(subject_32[1922:2161]))
subject_32.exp_11 <- ts(as.numeric(subject_32[2162:2401]))
subject_32.exp_12 <- ts(as.numeric(subject_32[2402:2641]))
subject_32.exp_13 <- ts(as.numeric(subject_32[2642:2881]))
subject_32.exp_14 <- ts(as.numeric(subject_32[2882:3121]))

## subject No. 33
subject_33 <- t(Relative_Alpha_Power_data[33,])

subject_33.exp_1 <- ts(as.numeric(subject_33[2:121]))
subject_33.exp_2 <- ts(as.numeric(subject_33[122:241]))
subject_33.exp_3 <- ts(as.numeric(subject_33[242:481]))
subject_33.exp_4 <- ts(as.numeric(subject_33[482:721]))
subject_33.exp_5 <- ts(as.numeric(subject_33[722:961]))
subject_33.exp_6 <- ts(as.numeric(subject_33[962:1201]))
subject_33.exp_7 <- ts(as.numeric(subject_33[1202:1441]))
subject_33.exp_8 <- ts(as.numeric(subject_33[1442:1681]))
subject_33.exp_9 <- ts(as.numeric(subject_33[1682:1921]))
subject_33.exp_10 <- ts(as.numeric(subject_33[1922:2161]))
subject_33.exp_11 <- ts(as.numeric(subject_33[2162:2401]))
subject_33.exp_12 <- ts(as.numeric(subject_33[2402:2641]))
subject_33.exp_13 <- ts(as.numeric(subject_33[2642:2881]))
subject_33.exp_14 <- ts(as.numeric(subject_33[2882:3121]))

## subject No. 34
subject_34 <- t(Relative_Alpha_Power_data[34,])

subject_34.exp_1 <- ts(as.numeric(subject_34[2:121]))
subject_34.exp_2 <- ts(as.numeric(subject_34[122:241]))
subject_34.exp_3 <- ts(as.numeric(subject_34[242:481]))
subject_34.exp_4 <- ts(as.numeric(subject_34[482:721]))
subject_34.exp_5 <- ts(as.numeric(subject_34[722:961]))
subject_34.exp_6 <- ts(as.numeric(subject_34[962:1201]))
subject_34.exp_7 <- ts(as.numeric(subject_34[1202:1441]))
subject_34.exp_8 <- ts(as.numeric(subject_34[1442:1681]))
subject_34.exp_9 <- ts(as.numeric(subject_34[1682:1921]))
subject_34.exp_10 <- ts(as.numeric(subject_34[1922:2161]))
subject_34.exp_11 <- ts(as.numeric(subject_34[2162:2401]))
subject_34.exp_12 <- ts(as.numeric(subject_34[2402:2641]))
subject_34.exp_13 <- ts(as.numeric(subject_34[2642:2881]))
subject_34.exp_14 <- ts(as.numeric(subject_34[2882:3121]))

## subject No. 35
subject_35 <- t(Relative_Alpha_Power_data[35,])

subject_35.exp_1 <- ts(as.numeric(subject_35[2:121]))
subject_35.exp_2 <- ts(as.numeric(subject_35[122:241]))
subject_35.exp_3 <- ts(as.numeric(subject_35[242:481]))
subject_35.exp_4 <- ts(as.numeric(subject_35[482:721]))
subject_35.exp_5 <- ts(as.numeric(subject_35[722:961]))
subject_35.exp_6 <- ts(as.numeric(subject_35[962:1201]))
subject_35.exp_7 <- ts(as.numeric(subject_35[1202:1441]))
subject_35.exp_8 <- ts(as.numeric(subject_35[1442:1681]))
subject_35.exp_9 <- ts(as.numeric(subject_35[1682:1921]))
subject_35.exp_10 <- ts(as.numeric(subject_35[1922:2161]))
subject_35.exp_11 <- ts(as.numeric(subject_35[2162:2401]))
subject_35.exp_12 <- ts(as.numeric(subject_35[2402:2641]))
subject_35.exp_13 <- ts(as.numeric(subject_35[2642:2881]))
subject_35.exp_14 <- ts(as.numeric(subject_35[2882:3121]))

## subject No. 36
subject_36 <- t(Relative_Alpha_Power_data[36,])

subject_36.exp_1 <- ts(as.numeric(subject_36[2:121]))
subject_36.exp_2 <- ts(as.numeric(subject_36[122:241]))
subject_36.exp_3 <- ts(as.numeric(subject_36[242:481]))
subject_36.exp_4 <- ts(as.numeric(subject_36[482:721]))
subject_36.exp_5 <- ts(as.numeric(subject_36[722:961]))
subject_36.exp_6 <- ts(as.numeric(subject_36[962:1201]))
subject_36.exp_7 <- ts(as.numeric(subject_36[1202:1441]))
subject_36.exp_8 <- ts(as.numeric(subject_36[1442:1681]))
subject_36.exp_9 <- ts(as.numeric(subject_36[1682:1921]))
subject_36.exp_10 <- ts(as.numeric(subject_36[1922:2161]))
subject_36.exp_11 <- ts(as.numeric(subject_36[2162:2401]))
subject_36.exp_12 <- ts(as.numeric(subject_36[2402:2641]))
subject_36.exp_13 <- ts(as.numeric(subject_36[2642:2881]))
subject_36.exp_14 <- ts(as.numeric(subject_36[2882:3121]))

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

## organizing by task baseline, 1, 2, 3, 4 ------------------------------------

meanS.baseline_open <- c(meanS.exp_1)
meanS.baseline_closed <- c(meanS.exp_2)
meanS.task_1 <- c(meanS.exp_3, meanS.exp_7, meanS.exp_11)
meanS.task_2 <- c(meanS.exp_4, meanS.exp_8, meanS.exp_12)
meanS.task_3 <- c(meanS.exp_5, meanS.exp_9, meanS.exp_13)
meanS.task_4 <- c(meanS.exp_6, meanS.exp_10, meanS.exp_14)

hist(meanS.baseline_open, breaks = 20)
hist(meanS.baseline_closed, breaks = 20)
hist(meanS.task_1, breaks = 20)
hist(meanS.task_2, breaks = 20)
hist(meanS.task_3, breaks = 20)
hist(meanS.task_4, breaks = 20)


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

## organizing by task baseline, 1, 2, 3, 4 ------------------------------------
varS.baseline_open <- c(varS.exp_1)
varS.baseline_closed <- c(varS.exp_2)
varS.task_1 <- c(varS.exp_3, varS.exp_7, varS.exp_11)
varS.task_2 <- c(varS.exp_4, varS.exp_8, varS.exp_12)
varS.task_3 <- c(varS.exp_5, varS.exp_9, varS.exp_13)
varS.task_4 <- c(varS.exp_6, varS.exp_10, varS.exp_14)

hist(varS.baseline_open, breaks = 20)
hist(varS.baseline_closed, breaks = 20)
hist(varS.task_1, breaks = 20)
hist(varS.task_2, breaks = 20)
hist(varS.task_3, breaks = 20)
hist(varS.task_4, breaks = 20)

### time deries plots ---------------------------------------------------------
































