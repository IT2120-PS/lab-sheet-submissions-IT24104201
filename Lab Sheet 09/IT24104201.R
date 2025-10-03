setwd("C:\\Users\\User\\Desktop\\IT24104201")
getwd()

#01 
#i
baking_time <- rnorm(25, mean = 45, sd = 2)
print(baking_time)

#ii
t.test (baking_time, mu = 46, alternative = "less")

