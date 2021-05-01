###Assignment 2###
##Question 1##
France = 4  # Number of goals scored by France
Croatia = 2 # Number of goals scored by Crotia

if (France > Croatia) print ("France wins")else print("Croatia wins")
# Question 2 #
mtcars
str(mtcars)
#cyl + last 4 are factor
for(i in c(8:11)){mtcars[,i]=as.factor(mtcars[,i])}#converting cyl and last four to factor
str(mtcars)#to check data type
#Question 3#
install.packages("readxl")
library(readxl)
Dataset_2.1=read_excel("C:\\Users\\melis\\3D Objects\\OneDrive\\Documents\\Data science course, grey campus\\Assignment 2\\Dataset - 2.1.xlsx")
Dataset_2.1
colMeans(is.na(Dataset_2.1))
#Question 4#
rowMeans(is.na(Dataset_2.1))
#Question 5#
Dataset_2.1
str(Dataset_2.1)
nums = unlist(lapply(Dataset_2.1, is.numeric)) 
Dataset_2.1=Dataset_2.1[,nums]
str(Dataset_2.1)
#Question 6#
ggplot(Dataset_2.1, aes(THC)) +
  geom_histogram()
hist(Dataset_2.1$CO2)
#Question 7#
library(dplyr)
library(tidyverse)
Dataset_2.2=read.csv("C:\\Users\\melis\\3D Objects\\OneDrive\\Documents\\Data science course, grey campus\\Data set - 2.2.csv")
str(Dataset_2.2)
Dataset_2.2 = Dataset_2.2 %>% mutate( 
  `First.FD.Date` = as.Date(strptime(gsub("/","-",as.factor(`First.FD.Date`)),"%m-%d-%Y"), "%d-%m-%Y"),
  `Last.FD.Date` = as.Date(strptime(gsub("/","-",as.factor(`Last.FD.Date`)),"%m-%d-%Y"), "%d-%m-%Y"),
  `FD.termination.date` = as.Date(strptime(gsub("/","-",as.factor(`FD.termination.date`)),"%m-%d-%Y"), "%d-%m-%Y"))
 str(Dataset_2.2)
Dataset_2.2
#Question 8#
Dataset_2.2 = Dataset_2.2 %>% mutate( 
  `Date.of.Birth` = as.Date(strptime(factor(`Date.of.Birth`),"%d-%b-%y"), "%d-%m-%Y"), origin = "1970-01-01")
str(Dataset_2.2)
#Question 9#
#Completed above

#Question 10#
Dataset_2.2 = Dataset_2.2 %>% 
  mutate(age = (`First.FD.Date`-`Date.of.Birth`)/ 365)
Dataset_2.2
