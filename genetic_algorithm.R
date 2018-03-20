#Algoritmo genetico para optimizacion de una funcion unidimencional. 

rm(list = ls())

#install.packages("GA")
#install.packages("foreach")



library(foreach)
library(iterators)
library(GA)

f<-function(x) abs(x)+cos(x)+sin(x)^2+4
f(0)
min=-20
max=20
curve(f,min,max)
fitness<-function(x) -f(x)
curve(fitness,min,max)
GA<-ga(type = "real-valued",fitness = fitness,min=min,max=max)
plot(GA)
summary(GA)

opt.sol<-optimize(f,lower = min,upper=max,maximum = F)
opt.sol
