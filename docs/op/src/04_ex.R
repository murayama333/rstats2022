beer_df <- read.csv("~/Desktop/beer.csv")
beer_df$temperature

cor(beer_df$temperature, beer_df$beer)
plot(beer_df$temperature, beer_df$beer)

beer.lm <- lm(beer~temperature, data = beer_df)
summary(beer.lm)
abline(beer.lm, col="blue")

data.test <- data.frame("temperature" = c(30.0))
predict(result, newdata=data.test)
