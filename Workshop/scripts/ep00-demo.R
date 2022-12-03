#    ____                                 _             _   _             
#   |  _ \  ___ _ __ ___   ___  _ __  ___| |_ _ __ __ _| |_(_) ___  _ __  
#   | | | |/ _ \ '_ ` _ \ / _ \| '_ \/ __| __| '__/ _` | __| |/ _ \| '_ \ 
#   | |_| |  __/ | | | | | (_) | | | \__ \ |_| | | (_| | |_| | (_) | | | |
#   |____/ \___|_| |_| |_|\___/|_| |_|___/\__|_|  \__,_|\__|_|\___/|_| |_|
#                                                                         

#
# A very quick demonstration of the sorts of things you can do with R
#


# Load the GGPLOT2 library
library(ggplot2)

# The dataset 'diamonds' in included with the ggplot library
View(diamonds)

# Generate a Plot 
ggplot(diamonds) + 
  geom_point(aes(x=carat, y=price, color=cut)) + 
  geom_smooth(aes(x=carat, y=price))

