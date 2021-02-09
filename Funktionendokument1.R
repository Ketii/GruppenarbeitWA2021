#Funktionsscript 1

#a)
#arithmetisches Mittel

mean(x)
var(x)
median(x)
sd(x)

Funktion1 <- function(x){
  print("arithmetisches Mittel" <- mean(x))
  print("Median" <- median(x))
  print("Standardabweichung" <- sd(x))
}

Funktion1(x)

x
y <- c(1:5,10)
y

#c)
Funktion3 <- function(x){
  print("Kovarianz Bravais-Pearson" <- cov(x, y, method = "pearson"))
  print("Kovarianz Kendall" <- cov(x,y, method = "kendall"))
  print("Kovarianz Spearman" <- cov(x,y, method = "spearman"))
  print("Korrelation" <- cor(x,y))
}


Funktion3(x)
