library(tidyverse)
Mpg_table <- read.csv(file='Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lin_regs <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mpg_table) #generate multiple linear regression model
summary(lin_regs)

Suspension_Coil_table <- read.csv(file='Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <-  Suspension_Coil_table %>% summarize(PSImean=mean(PSI), 
                                                      PSImedian=median(PSI),
                                                      PSIvarience=var(PSI),
                                                      PSI_sd=sd(PSI))


lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(PSImean=mean(PSI), 
                                                                                   PSImedian=median(PSI),
                                                                                   PSIvarience=var(PSI),
                                                                                   PSI_sd=sd(PSI)) #create summary table
