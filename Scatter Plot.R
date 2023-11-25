library(datasets)
library(tidyverse)

ggplot(responses,
       aes(x = `2. How many books do you read in a month on average?`,
           y = `1. How old are you?`)) +
  geom_point(color = "darkblue") +
  labs(x = 'Number of books',
       y = 'Age',
       title = "Number of books among different age groups") +
  lims(x = c(0, 4),
       y = c(15, 35)) +
  geom_smooth(method = lm,
              se = FALSE,
              col = "chocolate") +
  theme(
    axis.text.x = element_text(color = "blue"),
    axis.text.y = element_text(color = "blue"),    
    axis.title.x = element_text(color = "springgreen"),
    axis.title.y = element_text(color = "springgreen"),
    plot.title = element_text(color = "springgreen")  



