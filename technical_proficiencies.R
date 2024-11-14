########### Technical Proficiencies

library(ggplot2)

df <- data.frame(prog = c("R & RStudio", "MS Excel", "MS Access", "GitHub", "Stata", "Rmd/Quarto", "IBM SPSS"),
                 level = c(5, 5, 4, 4, 4, 3, 3))

plot = ggplot(data = df, aes(x = reorder(prog, +level), y = level)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(x = "Program", y = "Proficiency") + 
  coord_flip()

plot 