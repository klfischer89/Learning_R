# Creating a Data Frame
df <- data.frame(Name=c("Alice", "Bob", "Charlie"), Age=c(25, 30, 35), Score=c(90, 85, 95))
df
# Accessing a Column in the Data Frame
df$Name
df[, "Age"]
# Accessing a Row in the Data Frame
df[2, ]
# Accessing a Specific Element in the Data Frame
df[3, "Score"]
# Adding a New Column to the Data Frame
df$Passed <- c(TRUE, TRUE, TRUE)
df
# Filtering Rows in the Data Frame
df[df$Age > 28, ]
df[df$Score >= 90, ]
# Summary Statistics of the Data Frame
summary(df)
# Calculating the Mean Score
mean(df$Score)
# Calculating the Standard Deviation of Scores
sd(df$Score)
# Sorting the Data Frame by Age
df[order(df$Age), ]
# Sorting the Data Frame by Score in Descending Order
df[order(-df$Score), ]