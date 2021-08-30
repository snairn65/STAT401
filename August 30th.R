# Author: Shone, Date: August 30,2021, Purpose: Calculate One way ANOVA in R

library(dplyr)

# Download data from http page using function read.csv().

#Read the link/path
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv

#Read CSV file from link 
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))

#Check for lines from data frame
glimpse(df)


