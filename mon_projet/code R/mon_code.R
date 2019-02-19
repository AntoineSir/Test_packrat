df <- tibble(a = 1:100, b = sample(50), c = rnorm(100))
df %>% group_by(b) %>% summarise(moy = mean(c)) -> out

write.csv(out, file = "output/moyenne.csv")