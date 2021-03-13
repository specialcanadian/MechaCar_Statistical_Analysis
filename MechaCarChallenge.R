library(tidyverse)
#-------------- Deliverable 1
Mpg_table <- read.csv(file='Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lin_regs <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mpg_table) #generate multiple linear regression model
summary(lin_regs)
#-------------- Deliverable 1

#-------------- Deliverable 2
Suspension_Coil_table <- read.csv(file='Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <-  Suspension_Coil_table %>% summarize(PSImean=mean(PSI), 
                                                      PSImedian=median(PSI),
                                                      PSIvarience=var(PSI),
                                                      PSI_sd=sd(PSI))
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(PSImean=mean(PSI), 
                                                                                   PSImedian=median(PSI),
                                                                                   PSIvarience=var(PSI),
                                                                                   PSI_sd=sd(PSI)) #create summary table
#-------------- Deliverable 2

#-------------- Deliverable 3
t.test((Suspension_Coil_table$PSI),mu=mean(1500))

Lot1_data <- subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1")
t.test((Lot1_data$PSI),mu=mean(1500))

Lot2_data <- subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2")
t.test((Lot2_data$PSI),mu=mean(1500))

Lot3_data <- subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3")
t.test((Lot3_data$PSI),mu=mean(1500))









