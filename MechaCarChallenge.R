library(dplyr)
Mpg_table <- read.csv(file='Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lin_regs <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mpg_table) #generate multiple linear regression model
summary(lin_regs)