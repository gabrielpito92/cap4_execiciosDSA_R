# Boxplots 

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/FCD/BigDataRAzure/Cap04")
getwd()

?boxplot
?sleep #dataset

# Permite utilizar as colunas sem especificar o nome do dataset
attach(sleep) #anexar dataset a sessão
View(sleep)

# Construção do boxplot
sleepboxplot = boxplot(data = sleep, extra ~ group,
                       main = "Duração do Sono",
                       col.main = "red", ylab = "Horas", xlab = "Droga")

# Cálculo da média
medias = by(extra, group, mean) #substitui um loop - função by

# Adiciona a média ao gráfico
points(medias, col = "red") #add as medias no meu grafico


# Boxplot horizontal
horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T)

# add cores dentro dos boxplots
horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T,
                            col = c("blue", "red") )