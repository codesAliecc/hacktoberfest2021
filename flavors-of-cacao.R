library(DataExplorer)
library(ggplot2)

choco = read.csv("https://www.kaggle.com/abhishekpatel/flavors-of-cacaocsv",header=T,stringsAsFactors = F)

# view and str are a part of our EDA process.
View(choco)
str(choco)

#Cleaning Process
choco$Cocoa.Percent = as.numeric(gsub('%',' ',choco$Cocoa.Percent))
View(choco)


#Format Change (comes in data cleaning )
choco$Review.Date = as.character(choco$Review.Date)

str(choco)

#For better visualization 
plot_str(choco)


#To see missing values.
plot_missing(choco)

qplot(choco$REF,choco$Rating)

plot_histogram(choco)

plot_correlation(choco,type='continuous',title = 'My correlation Plot')

plot_correlation(choco,type = 'discrete','Review.Data')


boxplot(choco$Rating)
boxplot(choco$Cocoa.Percent)

boxplot(choco$REF~choco$Rating,
        data = choco,
        main = "Different boxplot for each month",
        xlab = "Rating",
        ylab = "Cocao.Percent",
        col = "orange",
        border = "brown")

boxplot(choco$Rating,ylab='Rating',main='Boxplot distribution of Rating')


plot(choco$Rating)
plot(choco$Rating,choco$Review.Date)

plot(x = choco$Cocoa.Percent, y=choco$Rating,
     xlab = "Cocoa.Percent",
     ylab = "Rating",
     xlim = c(10,100),
     ylim = c(1,5),
     main = "Cocoa.Percent vs Rating")
