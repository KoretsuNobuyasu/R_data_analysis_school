A <- matrix(c(1,2,3,2,3,1,3,1,2),3,3)
A
egenvalue <- eigen(A)
egenvalue

V <- egenvalue$vector
vector
sqrt(V[1,1]^2+V[2,1]^2+V[3,1]^2)
sqrt(V[1,2]^2+V[2,2]^2+V[3,2]^2)
sqrt(V[1,3]^2+V[2,3]^2+V[3,3]^2)

V[,1]%*%V[,2]%*%V[,3]

t(V)%*%A%*%V
solve(V)%*%A%*%V
