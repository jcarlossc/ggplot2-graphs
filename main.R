# =================================================
# VISUALIZAÇÃO DE DADOS COM GGPLOT2 EM LINGUAGEM R.
# =================================================

# Se você trabalha com análise de dados em R, certamente já 
# ouviu falar do ggplot2, um dos pacotes mais poderosos e 
# versáteis para criação de gráficos e visualizações de 
# alta qualidade.
# Neste estudo, você vai aprender o que é o ggplot2, como 
# ele funciona e verá exemplos práticos de gráficos mais 
# usados no dia a dia de quem analisa dados.

# O que é o ggplot2?
  
# O ggplot2 foi criado por Hadley Wickham e faz parte do 
# Tidyverse, um conjunto de pacotes voltados para manipulação 
# e visualização de dados.
# O nome vem de Grammar of Graphics (Gramática dos Gráficos), 
# um conceito criado por Leland Wilkinson que propõe que todo 
# gráfico é formado por camadas, como dados, mapeamentos 
# estéticos, geometrias e temas.

# Essa ideia permite que o usuário monte gráficos de forma 
# declarativa, ou seja, descrevendo o que quer visualizar, 
# e não como desenhar cada parte.

# Instalação do pacote:
# install.packages("ggplot2")

# Instalação do pacote dplyr para usar o dataframe starwars:
# install.packages("dplyr")

# Carregamento do pacote ggplot2.
library(ggplot2)

# Carregamento do pacote dplyr.
library(dplyr)

# Dataframe para testes com gráficos.
head(starwars)





