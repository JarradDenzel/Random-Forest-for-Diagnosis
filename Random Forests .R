# Random Forests Algorithm
# random forest builds multiple decision trees 
# and merges them together to get a more accurate and stable prediction
# it can be used for both classification and regression problems

# Cardiotocographic data: 21 Features
# Response Variable: N=normal, S=suspect, P=pathologic

# Load Data
data <- read.csv(file.choose(), header = T)
str(data)

# Convert NSP to a factor variable
data$NSP <- as.factor(data$NSP)
str(data)

# Partition data - training set (80%) & test set (20%)
set.seed(123)

# Create 2 Independent Sets of data, 70/30, training & test respectively
ind <- sample(2, nrow(mydata), replace = T, prob = (c(0.7, 0.3)))
trainer <-  mydata[ind==1,]
tester <- mydata[ind==2,]
