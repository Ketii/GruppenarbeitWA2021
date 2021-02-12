#Funktionsscript 1

#a)
#arithmetisches Mittel


Funktion1 <- function(x){
  print("arithmetisches Mittel" <- mean(x))
  print("Median" <- median(x))
  print("Standardabweichung" <- sd(x))
  arithmetisches <- mymean(x)
}

#b)

funktion2 <- function(x,...){
  haeuf <- table(x)      #haufigkeitstabelle
  modal <- names(which.max(table(x)))        #modalwert
  print(list("Tabelle"= haeuf, "Modalwert"=modal))
}

funktion2(x)

#c)
Funktion3  <- function(x,y,...){
  Kreuzt <- table(x, y)
  Z <- margin.table(Kreuzt, 1)
  S <- margin.table(Kreuzt, 2)
  n <- sum(Z)
  K <- length(Z)
  L <- length(S)
  X_quadr <- matrix(0, nrow = K, ncol = L)
  for (i in 1:K) {
    for (j in 1:L) {
      X_quadr[i,j] <- ((Kreuzt[i,j]^2) / (Z[i] * S[j]))
    }
  }
  chiquadr <- (n*(sum(X_quadr)-1))
  print(list(Chi_Quadrat = chiquadr, Pearsons_Kontingenz_ndex = sqrt(chiquadr/(chiquadr+n)),
             Korrigierter_Pearson_Index = sqrt(min(K,L)/(min(K,L)-1))*sqrt(chiquadr/(chiquadr+n))))
}

#Kontingenzkoeffizienten um zusammenhaenge zwischen zwei Kategorialen Variablen zu betrachten



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


Funktion6 <- function(vec1, vec2, vec3, vec4){
  par(mfrow = c(2,2),oma = c(0, 0, 2, 0))
  
  barplot(table(vec1), ylab= "absolute Haeufigkeiten", xlab= deparse(substitute(vec1)),
          ylim = c(0, max(table(vec1)+5)), col = blues9, main=deparse(substitute(vec1)), cex.main= 1.5)
  
  pie(table(vec2), radius = 1, main=deparse(substitute(vec2)), cex.main= 1.5)
  
  barplot(table(vec3), ylab= "absolute Haeufigkeiten", xlab= deparse(substitute(vec3)),
          ylim = c(0, max(table(vec3)+5)), col=blues9, main=deparse(substitute(vec3)), cex.main= 1.5)
  
  pie(table(vec4), radius=1, main=deparse(substitute(vec4)), cex.main= 1.5)
  
  mtext("Visualisierung von kategorialen Variablen", outer = TRUE, cex = 2)
}

#es werden 4 einzelne Datenvektoren als eingabe erwartet
#die Vektoren muessen des Typs character sein
#die graden vektoren werden als Kreisdiagramm und die ungraden Vektoren als Stabdiagramm dargestellt
