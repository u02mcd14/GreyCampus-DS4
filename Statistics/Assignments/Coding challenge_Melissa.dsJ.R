######## Coding challenge

# Use mtcars dataset and create a box plot comparing cylinder with mpg
head(mtcars)
str(mtcars)
boxplot(mtcars$mpg ~ mtcars$cyl)#boxplot can only be used for continuous numeric data, first is continuous data, then categorical data

# Use mtcars data set create a histogram of mpg
hist(mtcars$mpg)

# Use airquality dataset and calculate NAs in each column
colSums(is.na(airquality))

# Please check month column of airquality dataset, convert it into factor
str(airquality)
airquality$Month <- as.factor(airquality$Month)
str(airquality)

# Use gapminder dataset and calculate mean and median by continent
library(gapminder)
gapminder %>% 
  group_by(continent) %>% 
  summarize(meanLifeExp = mean(lifeExp),
            medianLifeExp = median(lifeExp))
