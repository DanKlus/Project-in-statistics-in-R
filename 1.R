install.packages("readxl")
library(readxl)

dane <- read_excel("your/path/tp/file.xlsx")



# Model regresji liniowej z dodatkowymi zmiennymi
model <- lm(Średnie_wynagrodzenie ~ PKB + Osoby_zatrudnione + Bezrobocie + Wartość_dodana, data = dane)

# Podsumowanie modelu
summary(model)


#Interpretacja wyników
# Podsumowanie modelu regresji
print(summary(model))




#Interpretacja wyników
# Współczynnik determinacji
r_squared <- summary(model)$r.squared
print(paste("Współczynnik determinacji: ", r_squared))

# Istotność statystyczna zmiennych
p_values <- summary(model)$coefficients[,4]
print(paste("p-value dla wyrazu wolnego: ", p_values[1]))
print(paste("p-value dla X1: ", p_values[2]))
print(paste("p-value dla X2: ", p_values[3]))
print(paste("p-value dla X3: ", p_values[4]))
print(paste("p-value dla X4: ", p_values[5]))
