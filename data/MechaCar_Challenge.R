library(dplyr)
# 1. Linear Regression to Predict MPG

# read data file as dataframe MechaCar_table
MechaCar_table <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

# linear regression model
# MechaCar_linear_regression_AWD <- lm(mpg ~ AWD, data=MechaCar_table)
# summary(MechaCar_linear_regression_AWD)

# multiple regression model
MechaCar_multiple_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table)
summary(MechaCar_multiple_regression)

# Significance
#vehicle_length    6.2  .6553  2.60e-12 ***
#  ground_clearance  3.5  .5412   5.21e-08 ***

# suspension coil summary statistics
Suspension_coil_table <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)



total_summary <- summarize()
lot_summary <- Suspension_coil_table %>%
  group_by(Manufacturing_Lot) %>%
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary
lot_summary

t.test(Suspension_coil_table$PSI, mu=1500)
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot1')
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot2')
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot3')
