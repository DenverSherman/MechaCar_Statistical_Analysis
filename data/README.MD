# 1. Statistical Analysis for MPG - Multiple Regression
Our initial multiple regression yields significant factors in mpg outcomes; vehicle length and ground clearance show positive correlations with fuel efficiancy at .001 significance. 

# 2. Suspension Coil - Market Summary
```
lot_summary <- Suspension_coil_table %>%
  group_by(Manufacturing_Lot) %>%
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary
```

### Review Needed
Standard deviations in manufacturing lot 3 lead me to believe the group_by formula was applied inapproriately.

# 3. Suspension Coil T-Test - All Lots
All lots are tested 
```
t.test(Suspension_coil_table$PSI, mu=1500)
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot1')
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot2')
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot3')

```
# 4. Design a study

### Pending