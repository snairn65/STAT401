# Author: Shone, Date: September 1, 2021, Purpose:Calculate ANOVA on sample data

library(dplyr)

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))

glimpse(df)

# Check the level of variable "poison"
# levels only works on numerical values

levels(df$poison)

df %>% group_by(poison) %>% summarise( count_poison = n(), mean_time = mean(time, na.rm = TRUE), sd_time = sd(time, na.rm = TRUE) )
