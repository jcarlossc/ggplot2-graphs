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

# Carregamento do pacote ggplot2.
library(ggplot2)

# Criar um dataframe completo e variado para testar
# os gráficos do ggplot2.
dados <- data.frame(
  Ano = rep(2018:2023, each = 12),            # anos
  Mês = rep(month.abb, times = 6),            # meses abreviados (Jan, Feb, ...)
  Categoria = rep(c("Eletrônicos", "Roupas", "Alimentos"), each = 24), # 3 categorias
  Região = rep(c("Norte", "Sul", "Leste", "Oeste"), times = 18),       # 4 regiões
  Vendas = round(runif(72, 1000, 5000), 0),   # vendas aleatórias
  Lucro = round(runif(72, 200, 1500), 0),     # lucro aleatório
  Clientes = round(runif(72, 50, 300), 0)     # número de clientes
)

head(dados)
View(dados)

# =============================
# PRINCIPAIS TIPOS DE GRÁFICOS.
# =============================

# Gráfico de Dispersão.
ggplot(dados, aes(x = Vendas, y = Lucro, color = Categoria, size = Clientes)) +
  geom_point(alpha = 0.7) +
  labs(title = "Relação entre Vendas, Lucro e Clientes", x = "Vendas", y = "Lucro") +
  theme_bw()







