if(!require(pacman)) install.packages("pacman")
library(pacman)

pacman::p_load(dplyr, car, rstatix, lmtest, ggpubr, QuantPsyc, psych, scatterplot3d)

#Carregando o BD

dados <- read.csv2('Banco de Dados 12.csv')
View(dados)
glimpse(dados)

# Contrução do modelo
mod <- lm(Notas ~ Tempo_Rev + Tempo_Sono, dados)

# Análise gráfica
par(mfrow=c(2,2))
plot(mod)
par(mfrow=c(1,1))

# Normalidade de resíduos
shapiro.test(mod$residuals)

#Outliers nos resíduos
summary(rstandard(mod))