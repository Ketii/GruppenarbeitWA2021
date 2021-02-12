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




funktion2(Data$Mathe_LK)
#$`Tabelle`
#x
#Ja Nein 
#81   19 

#$Modalwert
#[1] "Ja"



#setwd("C:/Users/User/Documents/GitHub/GruppenarbeitWA2021/1")
daten <- read.csv("Datensatz_Simulation.csv")

str(daten)

#deskriptive bivariate Statistiken:

#c) Zusammenhang zwischen zwei kategoriellen Variablen:

#i) Studienfach ~ MatheLK

Funktion3(daten$Studienfach,daten$Mathe_LK)

#$Chi_Quadrat              
#[1] 6.477177

#$Pearsons_Kontingenz_ndex
#[1] 0.2466406

#$Korrigierter_Pearson_Index
#[1] 0.3488025


#maessiger Zusammenhang zwischen Studienfachwahl und MatheLK

#ansonsten keine kategoriellen Variablen?

#d) Zusammenhang zwischen einer dichotomen und einer metrischen Variablen

#i) MatheLK ~ Alter

mathelk <- daten$Mathe_LK
mathelk <- as.logical(mathelk=="Ja") #daten$Mathe_LK muss in Logikvektor umgewandelt werden
#damit die Funktion4 funktioniert


funktion4(daten$Alter,mathelk)   #gruppierung auf der haelfte (25)
#[1] 0.1230587                   #gruppierung: Peronen unter 25, Personen >= 25


#ii) MatheLK ~ Interesse Mathematik

funktion4(daten$Interesse_an_Mathematik,mathelk,gr=5) #gruppiert auf weniger als 5 und >=5

#[1] 0.02241161

#kein Zusammenhang?

#iii) MatheLK ~ Interesse Programmieren

funktion4(daten$Interesse_am_Programmieren,mathelk,gr=5) #gruppiert auf 5
funktion4(daten$Interesse_am_Programmieren,mathelk,gr=4) #gruppiert auf 4
#[1] 0.1211916
#[1] 0.1222973

#leichter Zusammenhang? 

#Zusammenhang bezieht sich auf die 2 Gruppen und die dichotomen Variablen




#Funktion 5 

Funktion5
#mit dieser Funktion betrachten wir wieviele Beobachtungen kleiner-gleich dem jeweiligen 25 % 
#und größer-gleich dem 75% Quantil der Variable sind 

#Alter
Funktion5(Datensatz$Alter)

#$Tabelle
#y
#hoch  mittel niedrig 
#25      42      33 

#33 Beobachtungen der Variable Alter sind kleiner-gleich 24, dem 25 % Quantil, 25 Beobachtungen 
#liegen sind größer-gleich 27, dem 75 % Quantil der Variable Alter. Dies lässt darauf schließen, 
#dass die Altersverteilung leicht rechts-schief ist und die Gruppe der jungen Befragten stärker 
#vertreten ist als die Gruppe der älteren Befragten

#Interesse an Mathematik 
Funktion5(Datensatz$Interesse_an_Mathematik)
#$Tabelle
#y
#hoch  mittel niedrig 
#39      24      37 

#37 Beobachtungen sind kleiner-gleich 5, dem 25 % Quantil der Variable "Interesse an Mathematik", 
#39 Beobachtungen sind größer-gleich 7, dem 75 % Quantil. Es haben also die meisten Befragten
#ein sehr hohes Interesse an Mathematik.

#Interesse am Programmieren
table(Datensatz$Interesse_am_Programmieren)
Funktion5(Datensatz$Interesse_am_Programmieren)
#$Tabelle
#y
#hoch  mittel niedrig 
#33      40      27 

#27 Beobachtungen sind kleiner-gleich 3, dem 25 % Quantil und 33 Beobachtungen sind größer-gleich
#7, dem 75 % Quantil der Variable "Interesse am Programmieren". Die häufigste Antwort der 
#Befragten auf die Frage nach ihrem Interesse am Programmieren war also die höchsmögliche Punktzahl.

#Funktion 6

Funktion6
#Diese Funktion beschreibt den Datensatz visuell

Funktion6(Datensatz$Alter, Datensatz$Mathe_LK, Datensatz$Interesse_an_Mathematik, Datensatz$Studienfach )

#Bie beiden Balkendiagramme bestätigen unsere Beobachtungen, die wir mit Hilfe von Funktion 5
#getroffen haben. 
#Das Kreisdiagramm zur Variable "Mathe LK" zeigt deutlich, dass die Befragten, die einen Mathe-
#Leistungskurs belegten überwiegt
#Das Kreisdiagramm zur Variable "Studienfach" zeigt, dass Statistik Studierende unter den 
#Befragten am stärksten vertreten waren. 
>>>>>>> 5e2fefa59839a765b07a8d31cd1c6db417fa6d61
