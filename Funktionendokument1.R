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





Funktion5<-function(x){
  if (!is.numeric(x)) stop("Eingabe muss numerisch sein.")
  n<-length(x)
  y<-c(NA)
  for( i in 1:n) {
  if(x[i]<=quantile(x,0.25)){
    y[i]<-"niedrig"
  }
  if(x[i]>quantile(x,0.25)& x[i]<quantile(x,0.75)){
      y[i]<-"mittel"
  }
  if(x[i]>=quantile(x,0.75)){
      y[i]<-"hoch"
    }
  }
  t<-table(y)
  print(list("Vektor"=y,"Tabelle"=t))
}
Funktion5(x)