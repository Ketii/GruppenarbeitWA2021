<<<<<<< HEAD
Data<-read.csv("C:\\Users\\kayab\\Documents\\Studium\\GruppenarbeitWA2021\\Datensatz_Simulation.csv")


#a)
#arithmetisches Mittel


Funktion1 <- function(x){
  print("arithmetisches Mittel" <- mean(x))
  print("Median" <- median(x))
  print("Standardabweichung" <- sd(x))
}

Funktion1(Data$Alter)

#[1] 25.24
#[1] 25
#[1] 2.274674
#Das artithmetische Mittel der Altersangaben betraegt 25.24. Der Median der
#Altersangaben betraegt 25 und die standardabweichung ca. 2.27

#Studienfach ist keine metrische Variable

Funktion1(Data$Interesse_an_Mathematik)
#[1] 5.73
#[1] 6
#[1] 1.309291
#Es ist zu erkennen, dass das Interesse an Mathematik recht hoch ist. Das arithmetische Mittel 
#betraegt 7.73, der Median 6 und die Standardabweichung ca. 1.3


Funktion1(Data$Interesse_am_Programmieren)
#[1] 4.94
#[1] 5
#[1] 1.937509
#Das Interesse an Programmieren ist etwas geringer als das an Mathemaatik. Hierbei betraegt 
#das arithmetische Mittel 4.94, der Median 5 und die Standardabweichung ca. 1.9


#Mathe-Lk ist keine metrische Variable.



#b)

funktion2 <- function(x,...){
  haeuf <- table(x)      #haufigkeitstabelle
  modal <- names(which.max(table(x)))        #modalwert
  print(list("Tabelle"= haeuf, "Modalwert"=modal))
}

funktion2(x)

funktion2(Sim$Alter)


#$`Tabelle`
#x
#19 20 21 22 23 24 25 26 27 28 29 30 31 
#2  1  3  4  8 15 22 20 13  3  5  3  1 

#$Modalwert
#[1] 25


#Studienfach ist keine metrische Variable

funktion2(Data$Interesse_an_Mathematik)
#$`Tabelle`
#x
#2  3  4  5  6  7 
#1  4 18 14 24 39 

#$Modalwert
#[1] 7

funktion2(Data$Interesse_am_Programmieren)
#$`Tabelle`
#x
#1  2  3  4  5  6  7 
#7  3 17 17  7 16 33 

#$Modalwert
#[1] 7



#Mathe-Lk ist keine metrische Variable


=======
Data<-read.csv("C:\\Users\\kayab\\Documents\\Studium\\GruppenarbeitWA2021\\Datensatz_Simulation.csv")


#a)
#arithmetisches Mittel


Funktion1 <- function(x){
  print("arithmetisches Mittel" <- mean(x))
  print("Median" <- median(x))
  print("Standardabweichung" <- sd(x))
}

Funktion1(Data$Alter)

#[1] 25.24
#[1] 25
#[1] 2.274674
#Das artithmetische Mittel der Altersangaben betraegt 25.24. Der Median der
#Altersangaben betraegt 25 und die standardabweichung ca. 2.27

#Studienfach ist keine metrische Variable

Funktion1(Data$Interesse_an_Mathematik)
#[1] 5.73
#[1] 6
#[1] 1.309291
#Es ist zu erkennen, dass das Interesse an Mathematik recht hoch ist. Das arithmetische Mittel 
#betraegt 7.73, der Median 6 und die Standardabweichung ca. 1.3


Funktion1(Data$Interesse_am_Programmieren)
#[1] 4.94
#[1] 5
#[1] 1.937509
#Das Interesse an Programmieren ist etwas geringer als das an Mathemaatik. Hierbei betraegt 
#das arithmetische Mittel 4.94, der Median 5 und die Standardabweichung ca. 1.9


#Mathe-Lk ist keine metrische Variable



#b)

funktion2 <- function(x,...){
  haeuf <- table(x)      #haufigkeitstabelle
  modal <- max(x)        #modalwert
  print(list("Tabelle"= haeuf, "Modalwert"=modal))
}

funktion2(Sim$Alter)


#$`Tabelle`
#x
#19 20 21 22 23 24 25 26 27 28 29 30 31 
#2  1  3  4  8 15 22 20 13  3  5  3  1 

#$Modalwert
#[1] 31


#Studienfach ist keine metrische Variable

funktion2(Data$Interesse_an_Mathematik)
#$`Tabelle`
#x
#2  3  4  5  6  7 
#1  4 18 14 24 39 

#$Modalwert
#[1] 7

funktion2(Data$Interesse_am_Programmieren)
#$`Tabelle`
#x
#1  2  3  4  5  6  7 
#7  3 17 17  7 16 33 

#$Modalwert
#[1] 7



#Mathe-Lk ist keine metrische Variable


>>>>>>> b7638749a51564283b6bb8a4f12d638abafc3344
