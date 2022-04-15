my_var <- function(x) {
  var(x) * (length(x) - 1) / length(x)
}

my_sd <- function(x) {
  my_var(x) ** 0.5
}

company <- data.frame(
  "x"=c(1120, 1000, 880, 760, 1100, 1000, 900, 800, 1240, 1200, 1000, 1020, 1040, 1060, 1080, 1000, 980, 960, 940, 920),
  "y"=c(1120, 1060, 1000, 940, 880, 1100, 1050, 1000, 950, 900, 1000, 1010, 1020, 1030, 1040, 1000, 990, 980, 970, 960),
  "z"=c(1100, 1200, 1000, 900, 1100, 800, 900, 500, 400, 300, 400, 300, 300, 500, 400, 300, 2200, 2400, 2500, 2500)
)

mean(company$x)
median(company$x)
my_sd(company$x)

mean(company$y)
median(company$y)
my_sd(company$y)

mean(company$z)
median(company$z)
my_sd(company$z)

par(mfrow=c(1, 3)) 
hist(company$x, col="red")
hist(company$y, col="green")
hist(company$z, col="blue")

par(mfrow=c(1, 1))
boxplot(company)

install.packages("ineq")
library(ineq)
par(mfrow=c(1, 3))
Lc(company$x, plot=TRUE)
Lc(company$y, plot=TRUE)
Lc(company$z, plot=TRUE)