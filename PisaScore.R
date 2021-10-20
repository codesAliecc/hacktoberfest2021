df.raw2 <- read.csv(file = 'https://www.kaggle.com/zazueta/pisa-scores-2015?select=Pisa+mean+perfromance+scores+2013+-+2015+Data.csv',na.strings = '..')

View(df.raw2)

df.raw <- read.csv(file = 'Pisa mean perfromance scores 2013 - 2015 Data.csv',fileEncoding = "UTF-8-BOM",na.strings = '..')

View(df.raw)


library(tidyverse)
df <- df.raw[1:1161, c(1,4,7)] %>% spread(key=Series.Code, value=X2015..YR2015.) %>% rename(Maths = LO.PISA.MAT,
             Maths.F = LO.PISA.MAT.FE,
             Maths.M = LO.PISA.MAT.MA,
             Reading = LO.PISA.REA,                                                                               
             Reading.F = LO.PISA.REA.FE,
             Reading.M = LO.PISA.REA.MA,                                                                              
             Science = LO.PISA.SCI,                                                                               
             Science.F = LO.PISA.SCI.FE,                                                                              
             Science.M = LO.PISA.SCI.MA) %>% drop_na()
View(df)                                                                               

max.temp <- c(22, 27, 26, 24, 23, 26, 28)
barplot(max.temp)

barplot(max.temp,
        main = "Maximum Temperatures in a week",
        xlab = "Degree Celsius",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
        col = "darkred",
        horiz = TRUE)

barplot(max.temp,
        main = "Maximum Temperatures in a week ",
        xlab = "Degree Celsius",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
        col = "darkred")

age <- c(17,18,18,17,18,19,18,16,18,18)
age

table(age)

grouping(age)

barplot(age,
        main="Age Count of 10 Students",
        xlab="Age",
        ylab="Count",
        border="red",
        col="blue",
        density=10)

barplot(table(age),
        main="Age Count of 10 Students",
        xlab="Age",
        ylab="Count",
        border="red",
        col="blue",
        density=10)
