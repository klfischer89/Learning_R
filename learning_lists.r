# Creating a List
my_list <- list(Name="Alice", Age=25, Scores=c(90, 85, 95), Details=data.frame(Height=165, Weight=60))
my_list
# Accessing Elements in the List
my_list$Name
my_list$Scores
my_list$Details
# Adding an Element to the List
my_list$Passed <- TRUE
my_list
# Removing an Element from the List
my_list$Age <- NULL 
my_list
# Length of the List
length(my_list)
# Names of the List Elements    
names(my_list)
# Accessing List Elements by Index
my_list[[2]]
# Accessing Multiple Elements by Index
my_list[c(1,3)]
# Modifying an Element in the List
my_list$Name <- "Bob"
my_list