library(dplyr)

#Deliverable 1
mechaCar <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar)) #generate summary statistics


#Deliverable 2
Suspension_Coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset
total_summary <- Suspension_Coil %>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #summazrize all data in the PSI column
View(total_summary)

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #Summarize PSI column grouped by manufacturing lot
View(lot_summary)


#Deliverable 3
t.test(Suspension_Coil$PSI,mu=1500) #One-sample t-test of all lots to the population mean of 1500

t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == 'Lot1'),mu=1500) #One-sample t-test of manufacturing lot 1 to the population mean of 1500
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == 'Lot2'),mu=1500) #One-sample t-test of manufacturing lot 2 to the population mean of 1500
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == 'Lot3'),mu=1500) #One-sample t-test of manufacturing lot 3 to the population mean of 1500+
