#Author: Shone, Date: 15 October, 2021, Purpose: Create simple linear regresion model

#Relationship: We want to predict the weight based on height

# Independent variable 'x'is the height
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

#Dependent variable 'y' is the weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Create simple linear regression model 
relation <- lm(y~x)

# Print out data
print(relation)

#y/weight= -38.4551 + (0.6746 x/time)


# for a height of 170, the predicted weight is 76.2269
