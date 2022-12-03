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





# Magic required to be able to save our changes to GitHub

usethis::git_remotes()
usethis::create_github_token(scopes = 'repo', description = 'R Workshop')

gitcreds::gitcreds_set(url = "https://github.com")