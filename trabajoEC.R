set.seed(42)
n <- 100

datos <- data.frame(
  Ingresos     = rnorm(n, mean = 2500, sd = 500),
  Gastos       = rnorm(n, mean = 1500, sd = 400),
  Ahorros      = rnorm(n, mean = 800,  sd = 300),
  Edad         = rnorm(n, mean = 35,   sd = 10),
  HorasTrabajo = rnorm(n, mean = 40,   sd = 5),
  Calificacion = rnorm(n, mean = 14,   sd = 2)
)


cv <- function(x) {
  sd(x) / mean(x) * 100
}


resultados_cv <- sapply(datos, cv)


print("Coeficiente de variación (%) por variable:")
print(round(resultados_cv, 2))


barplot(resultados_cv,
        main = "Coeficiente de variación por variable",
        ylab = "CV (%)",
        col = "skyblue",
        las = 2)

