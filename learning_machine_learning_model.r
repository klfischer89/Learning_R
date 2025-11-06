library(OneR) # load package
data <- optbin(Species ~., data = iris) # find optimal bins for numeric predictors
model <- OneR(data, verbose = TRUE) # build actual model
## 
##     Attribute    Accuracy
## 1 * Petal.Width  96%     
## 2   Petal.Length 95.33%  
## 3   Sepal.Length 74.67%  
## 4   Sepal.Width  55.33%  
## ---
## Chosen attribute due to accuracy
## and ties method (if applicable): '*'
 
summary(model) # show rules
## 
## Call:
## OneR.data.frame(x = data, verbose = TRUE)
## 
## Rules:
## If Petal.Width = (0.0976,0.791] then Species = setosa
## If Petal.Width = (0.791,1.63]   then Species = versicolor
## If Petal.Width = (1.63,2.5]     then Species = virginica
## 
## Accuracy:
## 144 of 150 instances classified correctly (96%)
## 
## Contingency table:
##             Petal.Width
## Species      (0.0976,0.791] (0.791,1.63] (1.63,2.5] Sum
##   setosa               * 50            0          0  50
##   versicolor              0         * 48          2  50
##   virginica               0            4       * 46  50
##   Sum                    50           52         48 150
## ---
## Maximum in each column: '*'
## 
## Pearson's Chi-squared test:
## X-squared = 266.35, df = 4, p-value < 2.2e-16
 
plot(model)

prediction <- predict(model, data)
eval_model(prediction, data)
## 
## Confusion matrix (absolute):
##             Actual
## Prediction   setosa versicolor virginica Sum
##   setosa         50          0         0  50
##   versicolor      0         48         4  52
##   virginica       0          2        46  48
##   Sum            50         50        50 150
## 
## Confusion matrix (relative):
##             Actual
## Prediction   setosa versicolor virginica  Sum
##   setosa       0.33       0.00      0.00 0.33
##   versicolor   0.00       0.32      0.03 0.35
##   virginica    0.00       0.01      0.31 0.32
##   Sum          0.33       0.33      0.33 1.00
## 
## Accuracy:
## 0.96 (144/150)
## 
## Error rate:
## 0.04 (6/150)
## 
## Error rate reduction (vs. base rate):
## 0.94 (p-value < 2.2e-16)