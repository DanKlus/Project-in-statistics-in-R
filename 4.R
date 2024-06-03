install.packages("readxl")
library(readxl)


projekt <- read_excel("your/path/tp/file.xlsx")
View(projekt)

projekt[,2:4]->dane
#PCA
princomp(dane)->pca
summary(pca)
