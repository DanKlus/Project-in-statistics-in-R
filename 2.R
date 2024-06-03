install.packages("readxl")
library(readxl)

dane <- read_excel("your/path/tp/file.xlsx")



rl <- glm(Bezrobocie~PKB+Średnie_wynagrodzenie, data=dane, family = "binomial")
summary(rl)
