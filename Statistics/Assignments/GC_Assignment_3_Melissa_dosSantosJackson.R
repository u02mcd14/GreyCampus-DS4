#Question1#
library(readr)
library(tidyverse)
install.packages("tidyverse")
library(tidyr)
library(ggplot2)
install.packages("dplyr")
library(dplyr)
Covid19=read.csv("C:\\Users\\melis\\3D Objects\\OneDrive\\Documents\\Data science course, grey campus\\COVID19.csv")
str(Covid19)
install.packages('DT')
library(DT) #this is to read dataset
datatable(Covid19)
NewCovid19=Covid19[c(9:229),]
NewCovid19
str(NewCovid19)
NNCOV=as.data.frame(lapply(NewCovid19, function(y) gsub(",", "", y)))
NNCOV
class(NNCOV)
str(NNCOV)
NNCOV[,4:16]=as.numeric(unlist(NNCOV[,4:16]))
NNCOV=head(NNCOV,10)
colMeans(is.na(NNCOV))#or
NNCOV %>% 
  summarise_all(list(name=~(sum(is.na(.)) / length(.))))
NNCOV <- subset( NNCOV, select = -c(5,7,9,11) )

NNCOV=NNCOV%>%
rename(Country=Country.Other)


##Q1##
NNCOV %>%
ggplot( aes(x= Country, y= TotalCases)) + 
  geom_point()

NNCOV %>%
  ggplot( aes(x= Country, y= TotalDeaths)) + 
  geom_point()

NNCOV %>%
  ggplot( aes(x= Country, y= TotalRecovered)) + 
  geom_point()

##Q2##

NNCOV %>%
  ggplot(aes(x = TotalCases, y = Population))+#generally as the size of the population increases as does the number of cases
  geom_point()+
  labs(title = "Number of deaths per size of population",
       x = "Total Cases",
       y = "Population")

##Q3##
NNCOV %>%
  ggplot(aes(x = Tot.Cases.1M.pop, y = Population))+#no clear correlation
  geom_point()+
  labs(title = "Total cases per size of population",
       x = "Total Cases per 1M Pop",
       y = "Population")

##Q4##
#based on the previous graphs the column totl cases is best.

##Q5##
NNCOV %>%
  ggplot(aes(x = TotalCases, y = TotalDeaths))+#the more cases there are, the more deaths there are
  geom_point()+
  labs(title = "Total cases vs Total Deaths",
       x = "Total Cases",
       y = "Total Deaths")

##Q6##
NNCOV %>%
  ggplot(aes(x = TotalCases, y = Deaths.1M.pop))+#the more cases there are, the more deaths there are
  geom_point()+
  labs(title = "Total cases vs Deaths per 1M pop",
       x = "Total Cases",
       y = "Deaths per 1M pop")
##no significant correlation, Total deaths is better

##Q7##
NNCOV %>%#North America has the highest number of cases although we are only seeing the top ten results
  ggplot(aes(x= Continent, y= Tot.Cases.1M.pop)) + 
  geom_point()

##Q8##
NNCOV %>%#Europe has the highest number of deaths per 1M pop although we are only seeing the top ten results
  ggplot( aes(x= Continent, y= Deaths.1M.pop)) + 
  geom_point()

##Q9##
NNCOV %>%#India has had the most tests, but per capita would be best as India also has a higher population. Unfortunately there was more than 5% of the values missing which is why this column was not used.
  ggplot( aes(x= Country, y= TotalTests)) + 
  geom_point()

##Q10##
NNCOV %>%#North America had the most tests, but per capita would be best as NA also has a large population. Unfortunately there was more than 5% of the values missing which is why this column was not used.
  ggplot( aes(x= Continent, y= TotalTests)) + 
  geom_point()

##Q11##
#Column removed as per start of question
