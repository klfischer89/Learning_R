age <- c(21, 46, 55, 35, 28)
income <- c(1850, 2500, 2560, 2230, 1800)
df <- data.frame(age, income) # create a data frame
df
##   age income
## 1  21   1850
## 2  46   2500
## 3  55   2560
## 4  35   2230
## 5  28   1800
 
cor(df) # correlation
##              age    income
## age    1.0000000 0.9464183
## income 0.9464183 1.0000000
 
LinReg <- lm(income ~ age, data = df) # income as a linear model of age
LinReg
## 
## Call:
## lm(formula = income ~ age, data = df)
## 
## Coefficients:
## (Intercept)          age  
##     1279.37        24.56
 
summary(LinReg)
## 
## Call:
## lm(formula = income ~ age, data = df)
## 
## Residuals:
##       1       2       3       4       5 
##   54.92   90.98  -70.04   91.12 -166.98 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)   
## (Intercept) 1279.367    188.510   6.787  0.00654 **
## age           24.558      4.838   5.076  0.01477 * 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 132.1 on 3 degrees of freedom
## Multiple R-squared:  0.8957, Adjusted R-squared:  0.8609 
## F-statistic: 25.77 on 1 and 3 DF,  p-value: 0.01477
 
plot(df, pch = 16, main = "Linear model")
abline(LinReg, col = "blue", lwd = 2) # adding the regression line

pred_LinReg <- predict(LinReg, data.frame(age = seq(15, 70, 5)))
names(pred_LinReg) <- seq(15, 70, 5)
round(pred_LinReg, 2)
##      15      20      25      30      35      40      45      50      55 
## 1647.73 1770.52 1893.31 2016.10 2138.88 2261.67 2384.46 2507.25 2630.04 
##      60      65      70 
## 2752.83 2875.61 2998.40