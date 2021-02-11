#Funktionen für Funktion1

mymean <- function(x){
  sum(x)/length(x)
}

mymedian <- function(x){
  x <- na.omit(x)
  
  half <- length(x)/2
  
  if(half %% 1 == 0){
    half <- c(half, half+1)
    med <- sort(x, partial = half)[half]
    return(mean(med))
  }
  else{ 
    half <- ceiling(half)
    med <- sort(x, partial = half)[half]
    return(med)
  }
}

myvar <- function(x){
  1/(length(x)-1)*sum((x-mymean(x))^2)
}

mysd <- function(x){
  sqrt(myvar)
}

#Funktion fuer Funktion4 

grbp <- function(x,y,gr) {
  a <- length(which(x < gr & y == T))
  b <- length(which(x < gr & y == F))
  c <- length(which(x >= gr & y == T))
  d <- length(which(x >= gr & y == F))
  rG <- (a*d-b*c)/sqrt((a+b)*(c+d)*(a+c)*(b+d))  #gruppierter Bravais Pearson
  print(rG)
}


