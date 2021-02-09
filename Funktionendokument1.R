#Funktionsscript 1

#a)
#arithmetisches Mittel

mymean <- function(x){
  sum(x)/length(x)
}

myvar <- function(x){
  1/(length(x)-1)*sum((x-mymean(x))^2)
}
