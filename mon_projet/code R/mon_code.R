library(dplyr)
library(microbenchmark)

df <- data.frame(a = c(1:100), b = sample(50), c = rnorm(100), replace = TRUE)
df %>% as_tibble() %>% group_by(b) %>% summarise(moy = mean(c)) -> out

microbenchmark(times = 5, df %>% as_tibble() %>% group_by(b) %>% summarise(moy = mean(c)) )