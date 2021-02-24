# Simple script analysing the Australian weather data

library("tidyverse")

# Read in the data

df = read_csv("data/weatherAUS.csv")

# Create a scatter plot of Humidity9am and Temp9am
# a location

city = "Sydney"

(
  scatter_plot = 
    df %>%
    filter(Location == city) %>%
    ggplot(aes(x = Temp9am, 
               y = Humidity9am)) + 
    geom_point(col = 'green', 
               shape = 2,
               size = 3) + 
    ggtitle(paste0('Temp and Humidity at 9am in ', city,
                   ' given different wind directions')) +
    facet_wrap(~WindDir9am) +
    theme_minimal()
)

# Save the plot in graphics/
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)

#Testing 'git pull'
#Testing 'git merge'
