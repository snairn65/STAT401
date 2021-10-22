Author: Shone Nairn, Date: October 22,2021, Purpose: Perform multiple linear regression
on smaple dataset

#install package #1
install.packages("tidyverse")

#install package #2
install.packages('datarium')

#load library 'tidyverse'
library(tidyverse)

#load library 'datarium'
library(datarium)

#load sample data from library 'tidyverse'
data("marketing", package = "datarium")
head(marketing)
dim(marketing)

#impact of the oney spent on three advertising media companies(youtube, facebook
and newspaper) on sales; Amount Spent ~ sales

#generating rates model
model <- lm(sales ~ youtube + facebook, data = marketing)

#overview of model
summary(model)

#generating the prediction function
sales = 3.5 + 0.045*youtube+0.187*facebook

