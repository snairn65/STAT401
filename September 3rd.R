# Author:Shone, Date: September 3, 2021, Purpose: Calculate One Way ANOVA

library(dplyr)

# Download data from http page using function read.csv().

#Read the link/path

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

#Read CSV file from link 
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))

#Check for lines from data frame

glimpse(df)

########################################

# Ranks of variable/column position 

levels(df$poison)

# Standard of our data in terms of mean, count and standard deviation

df %>% group_by(poison) %>% summarise( count_poison = n(), mean_time = mean(time, na.rm = TRUE), sd_time = sd(time, na.rm = TRUE) )

# Plotting the data using library ggplot

install.packages("ggplot2")
library(ggplot2)

# Plotting the data using the following function

ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)

# calculating critical f value: If f value id greater than critical vaue, there's a diff b/w 2 groups


