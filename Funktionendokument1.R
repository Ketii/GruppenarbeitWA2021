#Funktionsscript 1

#a)
#arithmetisches Mittel


Funktion1 <- function(x){
  print("arithmetisches Mittel" <- mean(x))
  print("Median" <- median(x))
  print("Standardabweichung" <- sd(x))
}

Funktion1(x)

#b)

funktion2 <- function(x,...){
  haeuf <- table(x)      #haufigkeitstabelle
  modal <- max(x)        #modalwert
  print(list("Tabelle"= haeuf, "Modalwert"=modal))
}

funktion2(x)

#c)
Funktion3 <- function(x,y){
  print("Korrelation Bravais-Pearson" <- cor(x, y, method = "pearson"))
  print("Korrelation Kendall" <- cor(x,y, method = "kendall"))
  print("Korrelation Spearman" <- cor(x,y, method = "spearman"))
}

Funktion3(x,y)

#Kovarianzen miteinander vergleichen
#Die Kovarianz von 

#d)

funktion4 <- function(x,y,...){
  if(!is.numeric(x) && !is.numeric(y)) stop("Mindestens ein Objekt muss numerisch sein")
  if(!(length(x)==length(y))) stop("Objekte muessen die selbe Laenge haben")
  gr <- round(min(x)+(range(x)[2]-range(x)[1])/2,digits=0)
  a <- length(which(x < gr & y == T))
  b <- length(which(x < gr & y == F))
  c <- length(which(x >= gr & y == T))
  d <- length(which(x >= gr & y == F))
  rG <- (a*d-b*c)/sqrt((a+b)*(c+d)*(a+c)*(b+d))  #gruppierter Bravais Pearson
  print(rG)
}

funktion4(x,y)

#gibt gruppierten Bravais Pearson Korrelationskoeffizienten aus

#e)

#e)

Funktion5<-function(x){
  if (!is.numeric(x)) stop("Die Variablen müssen mindestens ordinal sein")
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
