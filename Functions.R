library(rlang)
library(skimr)
library(moderndive)
library(gapminder)

plot <- function(country_n, x_graph, y_graph){
  economic %>%
    
    filter(country == country_n) %>%
    
    ggplot(aes(x= !!sym(x_graph), y = !!sym(y_graph))) +
    geom_smooth(color = "blue") +
    geom_point(color = "red") +
    
    labs(
      title = paste(y_graph, "vs", x_graph, "for", country_n),
      x = paste(x_graph),
      y = paste(y_graph)
    ) +
    
    theme_minimal()
  
}

g_v_u <- function(country_n){
  
  economic %>% 
    filter(country == country_n) %>% 
    
    ggplot(aes(x = gdp_growth_r, y = unemployment_r)) +
    geom_smooth(color = "blue") +
    geom_point(color = "red") +
    
    labs(
      title = paste("Unemployment Rate against GDP Growth for", country_n),
      x = "GDP Growth Rate (%)",
      y = "Unemployment Rate (%)"
    )
    
}