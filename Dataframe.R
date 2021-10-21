My_Dataframe <- data.frame(gender=c("Male","Female","Male","Male","Female","Female","Male"),
                           height=c(152,165,165,164,163,150,155),
                           weight=c(81,93,78,78,89,67,90),
                           Age=c(42,38,26,40,34,54,23)
                           )
My_Dataframe

My_Dataframe$height
My_Dataframe$weight
My_Dataframe$Age

summary(My_Dataframe)

#Mean
mean(My_Dataframe$height)

mean(My_Dataframe$weight)

#Variance

var(My_Dataframe$height)

#NEW package to be installed for skewness and kurtosis

library(e1071)
skewness(My_Dataframe$height)
kurtosis(My_Dataframe$height)

library("DescTools")
Mode(My_Dataframe$height)

#Removing attribute from data frame

My_Dataframe$height <- NULL


#Single out value in the Data frame
My_Dataframe$height[2] <- 172.5
My_Dataframe

add <- function(x,y){
  a <- x+y
  print(a)
}

add(20,30)

my_mode <- function(x)
  {
  unique_x <- unique(x)
  
  tabulate_x <- tabulate(match(x,unique_x))
  
  unique_x[tabulate_x == max(tabulate_x)]
}

My_Dataframe
my_mode(My_Dataframe$height)
Mode(My_Dataframe$height)
