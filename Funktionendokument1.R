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

funktion4 <- function(x,y,gr){
  if(!is.numeric(x) && !is.numeric(y)) stop("Mindestens ein Objekt muss numerisch sein")
  if(!(length(x)==length(y))) stop("Objekte muessen die selbe Laenge haben")
  if(missing(gr)) {
    gr <- round(min(x)+(range(x)[2]-range(x)[1])/2,digits=0)}
  else {
    gr <- gr
  }
  grbp(x,y,gr)
}

funktion4(x,y)

#gibt gruppierten Bravais Pearson Korrelationskoeffizienten aus

#e)

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