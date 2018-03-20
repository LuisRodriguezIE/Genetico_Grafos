rm(list = ls())

library(sna)

amigos<-c("Ita","Jesus","Alfredo","Gustavo","Maria",
          "Pedro","Javier","Mildred","Teresa","")
amigos

r <- 10
c <- 10
m0 <- matrix(0, r, c)
temp1<-apply(m0, c(1,2), function(x) sample(c(0,1),1)) 
temp1

sn<-matrix(temp1,nrow = 10,ncol = 10,dimnames = list(amigos,amigos))
sn


gplot(sn,displaylabels=TRUE)

od<-degree(sn,cmode = 'outdegree')
od

gplot(sn,displaylabels = T,vertex.cex = od)

id<-degree(sn,cmode = "indegree")
id
gplot(sn,displaylabels = T,vertex.cex = id)
