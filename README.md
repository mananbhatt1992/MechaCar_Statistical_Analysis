# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/99941484/174518776-60e2e406-eb98-447a-a878-59f74d8ac02c.png)

Looking at the output for the linear regression we can infer from the Pr(>|t|) values that vehicle_length and ground_clearence are likely to provide
a non-random amount of variance to the mpg values. The overall resulting p-value of the linear regression is 5.35e-11 which is way below the 0.05 significance therefore the null hypothesis for the linear regression can be rejected and the slope of the model is not zero. R-sqaured value is around 0.7 which means that roughly 70 percent of the mpg predictions can be explained using the linear regression model.


## Summary Statistics for Suspension Coils

![image](https://user-images.githubusercontent.com/99941484/174519450-1526581f-f4c2-40a8-960c-1447c94f2d31.png)

![image](https://user-images.githubusercontent.com/99941484/174519493-2554a193-8075-4ea3-ba5f-6513f55091dc.png)


As per the summary of the PSI data generated for the suspension coil dataset we were able to determine the overall variance of the dataset as 62 which is coherent with the wdesign specifications 100 pounds per sqaure inch, but when the variance was calucalted for each lot we were able to determine that only Lot1 and Lot2 with variance 0.9 and 7.4 respectively are within the design specification whereas Lot 3 with variance 170 exceeds the design specification of 100 pounds per square inch


## T-Tests on Suspension Coils

![image](https://user-images.githubusercontent.com/99941484/174520172-7a25c296-312c-49b0-b9b8-29586dd0094f.png)

In the above result we can see that p-value is 0.06 which is aboce the 0.05 significance which indicates that the dataset provided is statistically similar to the population

![image](https://user-images.githubusercontent.com/99941484/174520404-d585375d-9c02-45c0-8f10-eab986193746.png)


![image](https://user-images.githubusercontent.com/99941484/174520464-af2b4523-749e-4ae0-b9b8-03e85dea5c8b.png)


![image](https://user-images.githubusercontent.com/99941484/174520504-d6b3e114-5388-48ef-b49a-06101adc2d6a.png)


One-sample t-test for each lot returned above results

p-value for each lot:

* Lot 1 - 1
* Lot 2 - 0.6072
* Lot 3 - 0.04168

Lot 1 and Lot 2 have p-values of 1 and 0.6 respectively which is higher the 0.05 signifiacnce level while Lot 3 has p-value of 0.04 which is lower than the 0.05 significance level; this indicates that only Lot 1 and Lot 2 are statistically similar to the population while Lot3 is statistically different formt he population.


## Study Design: MechaCar vs Competition

In order to quantify how the MechaCar performs against other brands in the market the following statistical study can be used.

### study will use the following metrics to compare to competitors

* HorsePower
* Maintenance Cost

The study will look to proof/disprove the following hypotheses

Null hypothesis: the mean maintenance cost of MechaCar is the same or less than competitor vehicles for the same HorsePower.

Alternative hypothesis: the mean maintenance cost of the MechaCar is more than competitor vehicles for the same HorsePower.


### Statistical Test 

* t-test
* Anova Test - Anova test is a much better option as it will help to determine statistical variance across different independent variables.

### Data Required :

* Brand and Model Name
* Vehicular maintenance cost and HP for Mechacar and Competiotion

