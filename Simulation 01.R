#Simulation

set.seed(2020)
ID <- 1:100
Alter <- round(rnorm(100, mean=25, sd=2), digits = 0)
Studienfach <- sample(c("Statistik", "Data Science", "Informatik", "Mathematik"), size = 100, replace = T, prob = c(0.3, 0.3, 0.25, 0.15))
Interesse_an_Mathematik <- 0
Interesse_am_Programmieren <- 0

Data <- cbind(ID, Alter, Studienfach, Interesse_an_Mathematik, Interesse_am_Programmieren)
Data <- as.data.frame(Data)
Data$Interesse_an_Mathematik <- as.numeric(Data$Interesse_an_Mathematik)
Data$Interesse_am_Programmieren <- as.numeric(Data$Interesse_am_Programmieren)

Data$ID <- as.numeric(Data$ID)
Data$Alter <- as.numeric(Alter)

#Interesse an Mathematik
IMM <-sample(1:7, size = sum(Data$Studienfach=="Mathematik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.3, 0.5) )

IMS <-sample(1:7, size = sum(Data$Studienfach=="Statistik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.5, 0.3) )

IMD <-sample(1:7, size = sum(Data$Studienfach=="Data Science"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.5, 0.1, 0.3) )

IMI <-sample(1:7, size = sum(Data$Studienfach=="Informatik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.5, 0.05, 0.1, 0.3) )



#Interesse am Programmieren
IPI <-sample(1:7, size = sum(Data$Studienfach=="Informatik"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.3, 0.5) )

IPD <-sample(1:7, size = sum(Data$Studienfach=="Data Science"), replace = T, prob = c(0.001, 0.009, 0.04, 0.05, 0.1, 0.5, 0.3) )

IPS <-sample(1:7, size = sum(Data$Studienfach=="Statistik"), replace = T, prob = c(0.1, 0.009, 0.04, 0.5, 0.05, 0.001, 0.3) )

IPM <-sample(1:7, size = sum(Data$Studienfach=="Mathematik"), replace = T, prob = c(0.1, 0.009, 0.5, 0.05, 0.04, 0.001, 0.3)) 


Data$Interesse_an_Mathematik[which(Data$Studienfach == "Mathematik")] <- IMM
Data$Interesse_an_Mathematik[which(Data$Studienfach == "Statistik")] <- IMS
Data$Interesse_an_Mathematik[which(Data$Studienfach == "Data Science")] <- IMD
Data$Interesse_an_Mathematik[which(Data$Studienfach == "Informatik")] <- IMI

Data$Interesse_am_Programmieren[which(Data$Studienfach == "Mathematik")] <- IPM
Data$Interesse_am_Programmieren[which((Data$Studienfach == "Statistik"))] <- IPS
Data$Interesse_am_Programmieren[which(Data$Studienfach == "Data Science")] <- IPD
Data$Interesse_am_Programmieren[which(Data$Studienfach == "Informatik")] <- IPI

Mathe_LKM <- sample(c("Ja", "Nein"), size = sum(Data$Studienfach == "Mathematik"), replace = T, prob = c(0.9, 0.1))

Mathe_LKS <- sample(c("Ja", "Nein"), size = sum(Data$Studienfach == "Statistik"), replace = T,
                    prob = c(0.75, 0.25))
Mathe_LKD <- sample(c("Ja", "Nein"), size = sum(Data$Studienfach == "Data Science"),
                    replace = T, prob = c(0.6, 0.4))
Mathe_LKI <- sample(c("Ja", "Nein"), size = sum(Data$Studienfach == "Informatik"),
                    replace = T, prob = c(0.55, 0.35))

Data$Mathe_LK <- NA
Data$Mathe_LK[which(Data$Studienfach == "Mathematik")] <- Mathe_LKM
Data$Mathe_LK[which(Data$Studienfach == "Statistik")] <- Mathe_LKS
Data$Mathe_LK[which(Data$Studienfach == "Data Science")] <- Mathe_LKD
Data$Mathe_LK[which(Data$Studienfach == "Informatik")] <- Mathe_LKI

#setwd("C:\\Users\\danus\\OneDrive\\Dokumente\\GitHub\\GruppenarbeitWA2021")
#setwd("C:/Users/lenovo/Desktop/WS20-21/WA/GruppenarbeitWA2021")
write.csv(Data, file ="Datensatz_Simulation.csv" )



