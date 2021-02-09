#WA-Github Aufgabe

ID <- 1:100
Alter <- round(rnorm(100, mean=25, sd=2), digits = 2)
Studienfach <- sample(c("Statistik", "Data Science", "Informatik", "Mathematik"), size = 100, replace = T, prob = c(0.3, 0.3, 0.25, 0.15))
Interesse_an_Mathematik <- 0
Interesse_am_Programmieren <- 0

Data <- cbind(ID, Alter, Studienfach, Interesse_an_Mathematik, Interesse_am_Programmieren)

#Interesse an Mathematik
IMM <-sample(1:7, size = sum(Studienfach=="Mathematik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.3, 0.5) )

IMS <-sample(1:7, size = sum(Studienfach=="Statistik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.5, 0.3) )

IMD <-sample(1:7, size = sum(Studienfach=="Data Science"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.5, 0.1, 0.3) )

IMI <-sample(1:7, size = sum(Studienfach=="Informatik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.5, 0.05, 0.1, 0.3) )



#Interesse am Programmieren
IPI <-sample(1:7, size = sum(Studienfach=="Informatik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.3, 0.5) )

IPD <-sample(1:7, size = sum(Studienfach=="Data Science"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.5, 0.3) )

IPS <-sample(1:7, size = sum(Studienfach=="Statistik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.5, 0.1, 0.3) )

IPM <-sample(1:7, size = sum(Studienfach=="Mathematik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.5, 0.05, 0.1, 0.3)) 

IPM
