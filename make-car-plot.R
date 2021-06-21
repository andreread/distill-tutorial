library(tidyverse)



car_plot <- mtcars %>% 
  select(mpg, wt) %>% 
  ggplot(aes(wt, mpg))+
  geom_point()+
  geom_smooth(method = lm, formula = y ~ x, se = FALSE)+
  labs(title = "Fuel Efficiency and Weight",
       subtitle = "Heavier cars are less fuel efficient",
       x = "Weight (1000s of lbs)",
       y = "MPG",
       caption = "Henderson and Vellerman")

write_rds("car_plot", "car-plot.rds")

