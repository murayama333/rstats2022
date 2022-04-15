x <- c(60, 45, 50, 60, 40)	
y <- c(66, 50, 72, 60, 45)

t.test(x, y, paired = T)
# z <- y - x
# t.test(z)
