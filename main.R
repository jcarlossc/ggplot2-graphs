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

# Gráfico de Linhas.
ggplot(dados, aes(x = Ano, y = Vendas, color = Categoria, group = Categoria)) +
  geom_line(linewidth = 1) +
  geom_point(size = 2) +
  labs(title = "Evolução das Vendas por Categoria", x = "Ano", y = "Vendas") +
  theme_light()

# Gráfico de Barras.
ggplot(dados, aes(x = Categoria, y = Vendas, fill = Categoria)) +
  geom_col() +
  labs(title = "Vendas Totais por Categoria", x = "Categoria", y = "Vendas") +
  theme_minimal()

# Boxplot.
ggplot(dados, aes(x = Categoria, y = Lucro, fill = Categoria)) +
  geom_boxplot() +
  labs(title = "Distribuição de Lucros por Categoria", x = "Categoria", y = "Lucro") +
  theme_classic()

# Gráfico de Densidade.
ggplot(dados, aes(x = Vendas, fill = Categoria)) +
  geom_density(alpha = 0.5) +
  labs(title = "Distribuição de Vendas por Categoria", x = "Vendas", y = "Densidade") +
  theme_minimal()

# Gráfico de Área.
ggplot(dados, aes(x = Ano, y = Vendas, fill = Categoria)) +
  geom_area(alpha = 0.6, position = "stack") +
  labs(title = "Vendas Acumuladas por Categoria", x = "Ano", y = "Vendas") +
  theme_light()

# Gráfico Heatmap - mapa de calor.
ggplot(dados, aes(x = Região, y = Categoria, fill = Vendas)) +
  geom_tile(color = "white") +
  labs(title = "Mapa de Calor de Vendas", x = "Região", y = "Categoria") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  theme_minimal()

# Gráfico de Facetamento.
ggplot(dados, aes(x = Mês, y = Vendas, fill = Categoria)) +
  geom_col() +
  facet_wrap(~ Região) +
  labs(title = "Vendas Mensais por Região", x = "Mês", y = "Vendas") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Gráfico com Linha de Tendência.
ggplot(dados, aes(x = Vendas, y = Lucro, color = Categoria)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +
  labs(title = "Relação entre Vendas e Lucro com Tendência Linear") +
  theme_minimal()







