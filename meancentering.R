# mean centering

library(tidyverse)
set.seed(999)
b0 <- 1.4 # intercept
b1 <- 0.2 # continuous slope
b2 <- 1.7 # factor level 0-1 coefficient
b3 <- 2.9 # factor level 0-2 coefficient
b1.2 <- 0.5 # interaction between b1 and b2
b1.3 <- 0.9 # interaction between b1 and b3
sigma <- 2.0 # residual standard deviation
N <- 30 # number of data points

x1 <- runif(N, 0, 20) # continuous predictor data
# 3-factor predictor data:
f <- sample(c(1, 2, 3), N, replace = TRUE)

x2 <- ifelse(f == 2, 1, 0)
x3 <- ifelse(f == 3, 1, 0)

y <- rnorm(N, mean = b0 +
             b1 * x1 +
             b2 * x2 +
             b3 * x3 +
             x1 * x2 * b1.2 +
             x1 * x3 * b1.3,
           sd = sigma)

dat <- data.frame(x1, x2, x3, y,
                  f = as.factor(f))
head(dat)

dat %>% ggplot(aes(x1, y, color=f)) + geom_point()

m2 <- lm(y ~ x1 * f, data = dat)
t(round(coef(m2), 2))

m2.1 <- lm(y ~ x1 * x2 + x1 * x3, data = dat)
t(round(coef(m2.1), 2))

m2.1_no_inter <- lm(y ~ x1 + x2 + x3, data = dat)
t(round(coef(m2.1_no_inter), 2))
