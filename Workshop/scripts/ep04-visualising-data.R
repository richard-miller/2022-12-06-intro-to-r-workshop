# # Visualising data with ggplot2

# Based on: https://datacarpentry.org/R-ecology-lesson/04-visualization-ggplot2.html


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Plotting with ggplot2
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# load ggplot
#library(ggplot2) #this is included in tidyverse
library(tidyverse)

# load data

surveys_complete <- read_csv("data_raw/surveys_complete.csv")

# empty plot


# empty plot with axes


# data appears on the plot



# assign a plot to an object


# display the ggplot object (plus add an extra geom layer)




# ------------------------
# Exercise/Challenge 1
# ------------------------
# Change the mappings so weight is on the y-axis and hindfoot_length is on the x-axis






# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Building plots iteratively
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 






# ------------------------
# Exercise/Challenge 2
# ------------------------
#
# Use what you just learned to create a scatter plot of weight over species_id 
# with the plot type showing in different colours. 
# Is this a good way to show this type of data?





#not a great way to display this data...


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Boxplots
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#

# one discrete, one continuous variable




# ------------------------
# Exercise/Challenge 3
# ------------------------

# Notice how the boxplot layer is behind the jitter layer? What do you need to change in the code to put the boxplot in front of the points such that it's not hidden?



# ------------------------
# Exercise/Challenge 4
# ------------------------

# Boxplots are useful summaries but hide the shape of the distribution. 
# For example, if there is a bimodal distribution, it would not be observed 
# with a boxplot. An alternative to the boxplot is the violin plot 
# (sometimes known as a beanplot), where the shape (of the density of points) 
# is drawn.
# 
#Replace the box plot with a violin plot




# ------------------------
# Exercise/Challenge 5
# ------------------------

# So far, we've looked at the distribution of weight within species. Make a new 
# plot to explore the distribution of hindfoot_length within each species.
# Add color to the data points on your boxplot according to the plot from which 
# the sample was taken (plot_id).

# Hint: Check the class for plot_id. Consider changing the class of plot_id from 
# integer to factor. How and why does this change how R makes the graph?

# with a color scale


#now run again, and there are discrete colors:


# alternately, we can change the class of plot_id on the fly (without changing data object)




# ------------------------
# Exercise/Challenge 6
# ------------------------

# In many types of data, it is important to consider the scale of the 
# observations. For example, it may be worth changing the scale of the axis to 
# better distribute the observations in the space of the plot. Changing the scale
# of the axes is done similarly to adding/modifying other components (i.e., by 
# incrementally adding commands). 
# Make a scatter plot of species_id on the x-axis and weight on the y-axis with 
# a log10 scale.




# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Plotting time series data
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 

# counts per year for each genus


# ------------------------
# Exercise/Challenge 7
# ------------------------
# Modify the code for the yearly counts to colour by genus so we can clearly see the counts by genus. 





# OR alternately
# integrating the pipe operator with ggplot (no need to make a separate dataframe)



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Faceting
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Split one plot into Multiple plots




# organise rows and cols to show sex and genus



# organise rows by genus only


# ------------------------
# Exercise/Challenge 8
# ------------------------
# How would you modify this code so the faceting is organised into only columns 
# instead of only rows?


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Themes
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# themes set a look



# ------------------------
# Exercise/Challenge 9
# ------------------------
# Put together what you've learned to create a plot that depicts how the average 
# weight of each species changes through the years.
# Hint: need to do a group_by() and summarize() to get the data before plotting


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Customisation
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Makinging it your own



# save theme configuration as an object



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Topic: Exporting plots
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
