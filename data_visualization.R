GISTEMP_data <- read.csv(file.path("C:/Users/Aparna/Downloads/Programming Assignment 1 Data New", "ExcelFormattedGISTEMPDataCSV.csv"),header = TRUE,stringsAsFactors = FALSE,na.strings = c("***","****"))

sum(is.na(GISTEMP_data))

GISSTEMP_Data_New <- na.omit(GISTEMP_data)

GISSTEMP_Global_Data <- read.csv(file.path("C:/Users/Aparna/Downloads/Programming Assignment 1 Data New", "ExcelFormattedGISTEMPData2CSV.csv"))

sum(is.na(GISSTEMP_Global_Data))

ggplot(data = GISTEMP_data, aes(x = Year, y = Jun)) + geom_line(colour = "red")+scale_y_continuous(limits = c(-55,85), breaks = seq(-55,85,20))+
  scale_x_continuous(limits = c(1880,2020), breaks = seq(1880,2020,10))+ ggtitle ("Climate change from the year 1880-2015")+
  xlab("Year") +  ylab ("Change in Temperature for Jun")

ggplot(data = GISSTEMP_Global_Data, aes(x = Year, y = Glob)) + geom_line(colour = "blue")+scale_y_continuous(limits = c(-55,85), breaks = seq(-55,85,20))+
  scale_x_continuous(limits = c(1880,2020), breaks = seq(1880,2020,10))+ ggtitle ("Climate change from the year 1880-2015")+
  xlab("Year") +  ylab ("Change in temparature") + geom_line(data = GISSTEMP_Global_Data, aes(x = Year, y = NHem), color = "red") +
  geom_line(data = GISSTEMP_Global_Data, aes(x = Year, y = SHem), color = "yellow")

legend("topright",legend = c("Glob","NHem","SHem"),lty = 1,lwd = 2,pch = 21,
       col = c("blue","red","yellow"),text.col = c("blue","red","yellow"),inset = 0.01,cex = 0.8 )




cols <- brewer.pal(3, "Set1")
cols



