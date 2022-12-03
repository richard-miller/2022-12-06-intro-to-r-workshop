
#   __        __         _    _                        _ _   _       ____        _        
#   \ \      / /__  _ __| | _(_)_ __   __ _  __      _(_) |_| |__   |  _ \  __ _| |_ __ _ 
#    \ \ /\ / / _ \| '__| |/ / | '_ \ / _` | \ \ /\ / / | __| '_ \  | | | |/ _` | __/ _` |
#     \ V  V / (_) | |  |   <| | | | | (_| |  \ V  V /| | |_| | | | | |_| | (_| | || (_| |
#      \_/\_/ \___/|_|  |_|\_\_|_| |_|\__, |   \_/\_/ |_|\__|_| |_| |____/ \__,_|\__\__,_|
#                                     |___/                                               
#
#          _   _     _               _____ _     _                               
#         | | | |___(_)_ __   __ _  |_   _(_) __| |_   ___   _____ _ __ ___  ___ 
#         | | | / __| | '_ \ / _` |   | | | |/ _` | | | \ \ / / _ \ '__/ __|/ _ \
#         | |_| \__ \ | | | | (_| |   | | | | (_| | |_| |\ V /  __/ |  \__ \  __/
#          \___/|___/_|_| |_|\__, |   |_| |_|\__,_|\__, | \_/ \___|_|  |___/\___|
#                            |___/                 |___/                         
#
#   Based on: https://datacarpentry.org/R-ecology-lesson/03-dplyr.html


#
# Learning Objectives
#

#    Get started with dplyr and tidyr packages from the TidyVerse
#    Extract columns from datasframes using select()
#    Extract rows datasframes filter()
#    Link the output of one dplyr function to the input of another function with the ‘pipe’ operator
#    Add new columns to dataframes using functions of existing columns with mutate()
#    Use summarize(), group_by(), and count() to split a data frame into groups of observations, 
#    Apply summary statistics to groups
#    Understand wide vs long table formats and why these formats are useful
#    Describe key-value pairs
#    Reshape a data frame from long to wide format and back with the pivot_wider() and pivot_longer()
#    Save a dataframes to .csv files



# Data is available from the following link (we should already have it)
download.file(url = "https://ndownloader.figshare.com/files/2292169",
              destfile = "data_raw/portal_data_joined.csv")


# Read some data from a CSV file
surveys <- read.csv("data_raw/portal_data_joined.csv")

# lets remind ourselves what the dataframe looks like with str(), view() etc ...


# Load up the required "dplyr" library from the TidyVerse


#
# Some common dplyr functions - select(), filter(), mutate(), group_by(), summarize()
#

#
# select() - subset of columns (variables)
#

# include particular columns: eg plot_id, species_id and weight

# exclude particular columns, eg record_id and species_id using a '-'




#
# filter() - subset of rows (observations)
#

# all rows where year is 1995

# oldest year obversation rows (hint max(year, ))

# longest hindfoot_length



#
# Pipes - plumb thing together to create pipelines
#

# using temp dataframes, get rows where weight greater then 5 and show only species_id, sex and weight


# and we can store/assign the final result to an object




#-----------
# CHALLENGE
#-----------

# Using pipes, subset 'surveys' dataframe to extract animals collected before 1995 and 
# retain only the columns year, sex, and weight.





#
# mutate() - change a dataframe
#

# lets add a column called weight_kg by dividing the weight by 1000


# we can also add multiple columns at the same time - eg we can also add weight_lb by multiplying by 2.2


# using head() can be useful now


# NA means "not available". We check is a data value is NA with the function is.na() and ! means 'not'


#-----------
# CHALLENGE
#-----------

# Create a new data frame from the surveys dataframe that meets the following criteria:
#
# contains only the species_id column and a new column called hindfoot_cm containing 
# the hindfoot_length  values in millimeters converted to centimeters.
#
# The hindfoot_cm column, should have no NA's and all values need to be less than 3.
#
# Hint: think about how the commands should be ordered to produce this data frame!





#
# Split-apply-combine approach
#

#
# group_by() - collect like things together to allow us to summarise
#
surveys %>%
  group_by(sex) %>%
  summarize(mean_weight = mean(weight, na.rm = TRUE))

# we can include multiple group_by variables, eg species_id
surveys %>%
  filter(sex != "") %>%
  filter(!is.na(weight)) %>% 
  group_by(sex, species_id) %>%
  summarize(.groups = species_id, mean_weight = mean(weight, na.rm = TRUE) ) %>%
  head()



#-----------
# CHALLENGE 
#-----------

# 1. How many animals were caught in each ```plot_type``` surveyed?

# 2. Use ```group_by()``` and ```summarize()``` to find the mean, min, and max hindfoot length 
#    for each species (using ```species_id```). Also add the number of observations 
#    (hint: see ```?n```).

# 3. What was the heaviest animal measured in each year? 
#    Return the columns ```year```, ```genus```, ```species_id```, and ```weight```.





#-----------
# Reshaping
#-----------







#-----------
# CHALLENGE
#-----------

# 1. Spread the surveys data frame with year as columns, plot_id as rows, 
#    and the number of genera per plot as the values. You will need to summarize before reshaping, 
#    and use the function n_distinct() to get the number of unique genera within a particular chunk of data. 
#    It’s a powerful function! See ?n_distinct for more.

# 2. Now take that data frame and pivot_longer() it again, so each row is a unique plot_id by year combination.

# 3. The surveys data set has two measurement columns: hindfoot_length and weight. 
#    This makes it difficult to do things like look at the relationship between mean values of each 
#    measurement per year in different plot types. Let’s walk through a common solution for this type of problem. 
#    First, use pivot_longer() to create a dataset where we have a key column called measurement and a value column that 
#    takes on the value of either hindfoot_length or weight. 
#    Hint: You’ll need to specify which columns are being pivoted.

# 4. With this new data set, calculate the average of each measurement in each year for each different plot_type. 
#    Then pivot_wider() them into a data set with a column for hindfoot_length and weight. 
#    Hint: You only need to specify the key and value columns for pivot_wider().





#----------------
# Exporting data
#----------------





# handy dplyr cheetsheet: https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-transformation.pdf






