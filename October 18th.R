Author: Shone Nairn, Date: Obtober 18th, 2021, Purpose:  Create Simple Linear regression model

#Relationship: We want to predict the weight based on height

# Independent variable 'x'is the height
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

#Dependent variable 'y' is the weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Create simple linear regression model 
relation <- lm(y~x)

# Print out data
print(relation)

#y/weight= -38.4551 + (0.6746 x/height)

# for a height of 170, the predicted weight is 76.2269


#Setting the work directory
#mine is found on the file section of my workspace.

# Give chart file a name
png(file = "linearregression.png")

# plot the chart
plot(y,x,col = "blue",main = "Height & Weight Regression Analysis", abline(lm(y~x)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")

# Save file
dev.off()

