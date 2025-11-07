# Creating a data frame with IDs from 1 to 80
dfSurvey <- data.frame(ID=1:80)
dfSurvey

# Accessing the ID column in various ways
dfSurvey$ID
dfSurvey$ID[5]
rev(dfSurvey$ID)
sort(dfSurvey$ID)

# Adding IQScore column with random normal values
dfSurvey$IQScore <- rnorm(80, mean=100, sd=15)

# Adding Creativity column with random uniform values
dfSurvey$Creativity <- runif(80, 1, 10)

# Adding Age column with random normal values
dfSurvey$Age <- rnorm(80, 35, 4)

# Adding RightHand column with random binomial values
dfSurvey$RightHand <- rbinom(80, 1, 0.5)

# Adding PlaysIns column with random binomial values
dfSurvey$PlaysInstrument <- rbinom(80, 1, 0.5)

# Creating TestScore column based on a formula with some noise
dfSurvey$TestScore <- (dfSurvey$IQScore -100)/5 + dfSurvey$Creativity + ((dfSurvey$IQScore -100)/15) * (dfSurvey$Creativity - 5) - 
    dfSurvey$Age + dfSurvey$PlaysInstrument * 7 + 50 + rnorm(80, 0, 5)

dfSurvey$TestScore
dfSurvey

##############
# Approach 2 #
##############

#Create data frame with multiple variables
dfSurvey2 <- data.frame(ID=1:80,
                        IQScore=rnorm(80, 100, 15),
                        Creativity=runif(80, 1, 10),
                        Age=rnorm(80, 35, 4),
                        RightHand=rbinom(80, 1, 0.5),
                        PlaysInstrument=rbinom(80, 1, 0.8))

#Compute test score from other variables
dfSurvey2$TestScore <- (dfSurvey2$IQScore - 100)/5 + 
  dfSurvey2$Creativity + ((dfSurvey2$IQScore - 100)/15) * 
  (dfSurvey2$Creativity - 5) - dfSurvey2$Age + 
  dfSurvey2$PlaysInstrument * 7 + 50 + rnorm(80, 0, 5)

##############
# Approach 3 #
##############

#Create vectors
IDVec <- 1:80
IQScoreVec <- rnorm(80, 100, 15)
CreativityVec <- runif(80, 1, 10)
AgeVec <- rnorm(80, 35, 4)
RightHandVec <- rbinom(80, 1, 0.5)
PlaysInstrumentVec <- rbinom(80, 1, 0.8)
TestScoreVec <- (IQScoreVec - 100)/5 + 
  CreativityVec + ((IQScoreVec - 100)/15) * 
  (CreativityVec - 5) - AgeVec + 
  PlaysInstrumentVec * 7 + 50 + rnorm(80, 0, 5)

#Create data frame
dfSurvey3 <- data.frame(ID=IDVec,
                        IQScore=IQScoreVec,
                        Creativity=CreativityVec,
                        Age=AgeVec,
                        RightHand=RightHandVec,
                        PlaysInstrument=PlaysInstrumentVec,
                        TestScore=TestScoreVec)