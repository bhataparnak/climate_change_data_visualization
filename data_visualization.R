#library(ggplot)
#library(GGally)
#library(dplyr)
#library(tidyverse)

#To read the CSV file from the machine
GISTEMP_data <- read.csv(file.path("C:/Users/Aparna/Downloads/Programming Assignment 1 Data New", "ExcelFormattedGISTEMPDataCSV.csv"),header = TRUE,stringsAsFactors = FALSE,na.strings = c("***","****"))

#Check for any NA values in the dataset if present then clean the dataset by data pre processing
sum(is.na(GISTEMP_data))

#omit the data record row(s) with NA data
GISSTEMP_Data_New <- na.omit(GISTEMP_data)

#To read the CSV file from the machine
GISSTEMP_Global_Data <- read.csv(file.path("C:/Users/Aparna/Downloads/Programming Assignment 1 Data New", "ExcelFormattedGISTEMPData2CSV.csv"))

#Check for any NA values in the dataset if present then clean the dataset by data pre processing
sum(is.na(GISSTEMP_Global_Data))

#ggplot for temperature change for the month of June
ggplot(data = GISTEMP_data, aes(x = Year, y = Jun)) + geom_line(colour = "red")+scale_y_continuous(limits = c(-55,85), breaks = seq(-55,85,20))+
  scale_x_continuous(limits = c(1880,2020), breaks = seq(1880,2020,10))+ ggtitle ("Climate change from the year 1880-2015")+
  xlab("Year") +  ylab ("Change in Temperature for Jun")

#ggplot for temperature change for 12-months columns with legends
ggplot(data = GISTEMP_data, aes(x = Year)) +
  geom_line(aes(y = Jan, color = "Jan")) +
  geom_line(aes(y = Feb, color = "Feb")) +
  geom_line(aes(y = Mar, color = "Mar"))+
  geom_line(aes(y = Apr, color = "Apr")) +
  geom_line(aes(y = May, color = "May")) +
  geom_line(aes(y = Jun, color = "Jun"))+
  geom_line(aes(y = Jul, color = "Jul")) +
  geom_line(aes(y = Aug, color = "Aug")) +
  geom_line(aes(y = Sep, color = "Sep"))+
  geom_line(aes(y = Oct, color = "Oct")) +
  geom_line(aes(y = Nov, color = "Nov")) +
  geom_line(aes(y = Dec, color = "Dec"))+
  scale_y_continuous(limits = c(-55,85), breaks = seq(-55,85,20))+
  scale_x_continuous(limits = c(1880,2020), breaks = seq(1880,2020,10))+ ggtitle ("Climate change from the year 1880-2015")+
  xlab("Year") +  ylab ("Change in temparature")

#ggplot for temperature change for global,Nhem and Shem columns with legends
ggplot(data = GISSTEMP_Global_Data, aes(x = Year)) +
  geom_line(aes(y = Glob, color = "Glob")) +
  geom_line(aes(y = NHem, color = "NHem")) +
  geom_line(aes(y = SHem, color = "SHem"))+scale_y_continuous(limits = c(-55,85), breaks = seq(-55,85,20))+
  scale_x_continuous(limits = c(1880,2020), breaks = seq(1880,2020,10))+ ggtitle ("Climate change from the year 1880-2015")+
  xlab("Year") +  ylab ("Change in temparature")





