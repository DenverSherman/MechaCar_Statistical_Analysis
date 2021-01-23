# MechaCar_Statistical_Analysis
Intro to R, ggplot2


# 1. Statistical Analysis for MPG - Multiple Regression
Our initial multiple regression yields significant factors in mpg outcomes; vehicle length and ground clearance show positive correlations with fuel efficiancy at .001 significance. This is to be expected, as both of these factors 

# 2. Suspension Coil - Market Summary
```
lot_summary <- Suspension_coil_table %>%
  group_by(Manufacturing_Lot) %>%
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary
```

Standard deviations are recorded in the data file, sorted by increasing deviation.

# 3. Suspension Coil T-Test - All Lots
All lots are tested 
```
t.test(Suspension_coil_table$PSI, mu=1500)
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot1')
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot2')
t.test(Suspension_coil_table$PSI, mu=1500, subset=Suspension_coil_table$Manufacturing_Lot == 'Lot3')

```
# 4. Design a study

Through multiple regression, we now understand the key factors to increase fuel efficiency. Next, we can design a study that tells a data driven story about how MechaCar compares to competitors in the identified categories.  With varied categorical variables for inputs and a single output, ANOVA is the go-to options for this testing. We take measurements and observations on the vehicle specifications for both our cars and our competititors. We set a hypothesis: MechaCar performs better in fuel efficiency controlling for design. Should we observe a strong result from this test, we can market the success to increase sales.