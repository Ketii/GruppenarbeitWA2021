#Funktionsscript 1

#a)
#arithmetisches Mittel


Funktion1 <- function(x){
  print("arithmetisches Mittel" <- mean(x))
  print("Median" <- median(x))
  print("Standardabweichung" <- sd(x))
}

Funktion1(x)

#c)
Funktion3 <- function(x){
  print("Kovarianz Bravais-Pearson" <- cov(x, y, method = "pearson"))
  print("Kovarianz Kendall" <- cov(x,y, method = "kendall"))
  print("Kovarianz Spearman" <- cov(x,y, method = "spearman"))
  print("Korrelation" <- cor(x,y))
}

Funktion3(x)
