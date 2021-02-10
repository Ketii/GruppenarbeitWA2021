#Funktion fuer Funktion4 

grbp <- function(x,y,gr) {
  a <- length(which(x < gr & y == T))
  b <- length(which(x < gr & y == F))
  c <- length(which(x >= gr & y == T))
  d <- length(which(x >= gr & y == F))
  rG <- (a*d-b*c)/sqrt((a+b)*(c+d)*(a+c)*(b+d))  #gruppierter Bravais Pearson
  print(rG)
}

