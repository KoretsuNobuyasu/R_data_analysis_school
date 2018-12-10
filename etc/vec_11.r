A <- matrix(c(1, 1/2, 1/2, 1), 2, 2, byrow=TRUE)
A
eigen(A)


B <- matrix(c(3,2,1,2,1,1),3,2,byrow=TRUE)
B
eigen(cor(B))
prcomp(B,scale=T)

princomp(B, cor=T)$loadings

