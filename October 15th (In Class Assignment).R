#Author: Shone, Date: 15 October, 2021, Purpose: Create simple linear regresion model

#Relationship: We want to predict the height of someone based on their weight

# Independent variable 'x'is the weigth
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

#Dependent variable 'y' is the height
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Create simple linear regression model 
relation <- lm(y~x)

# Print out data
print(relation)

#y/HEIGHT= -38.4551 + (0.6746 x/time)


# for a weight of 170, the predicted height is 76.2269