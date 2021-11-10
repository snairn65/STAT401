#Author: Shone, Date: 10 November, 2021, Purpose: Calculate Ch-Square Value on sample:

# read the data link
data_frame<-read.csv("https://goo.gl/j6lRXD")

# Observe the data to check if there is any relationship between treatment and outcomes?
table(data_frame$treatment,data_frame$improvement)

#Perform the Chi-Square test
chisq.test(data_frame$treatment,data_frame$improvement,correct=FALSE)

?chisq.test
