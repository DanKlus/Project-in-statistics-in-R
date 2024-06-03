library(readxl)
library(cluster)

projekt <- read_excel("your/path/tp/file.xlsx")

#Przeskalowuję dane (kolumny od 2 do 6), aby zapewnić, że wszystkie zmienne 
#mają średnią 0 i odchylenie standardowe 1. Jest to ważny krok, aby każda zmienna miała 
#równy wpływ na wyniki analizy skupień.
scale(projekt[,c(2:6)]) -> dane

head(dane) #pierwsze 6 normalziacji

dist(dane, method = "euclidean") # Obliczana jest macierz odległości euklidesowych dla znormalizowanych danych. Macierz ta jest symetryczna, a wartości na przekątnej wynoszą 0 (odległość punktu od siebie samego).


#klasteryzacja metodą k-średnich na znormalizowanych danych dla obiektów, dzieląc je na 3 klastry. Wyświetlane jest podsumowanie wyników klasteryzacji, przydział obiektów do klastrów oraz środki klastrów (centroidy).
kmeans(dane, 3) -> k
summary(k)
k$cluster
k$centers


#Wykonuję analizę hierarchiczną metodą Warda za pomocą funkcji agnes i rysujemy dendrogram. Analiza ta pozwala na wizualizację hierarchicznych relacji między obiektami, co pozwala na identyfikację grup obiektów, które są do siebie podobne.
agnes(dane, method = "ward") -> mw
plot(mw)





