# QUestion 1 - of assignment: A vector is a 1D basic data structure, where as a Matrix is a 2D data structure. They are both a collection of elements of the same data type.
# Question 2 - Both dataframe and Matrix are 2D data structure in R. A data frame is a list which has each component with equal length. A list allows you to have elements of different classes. This is not possible in a matrix as in a matrix, all elements must be of the same class.
# Question 3 #
x=c(15,TRUE, "WORLD")
x #all elements have been converted to characters class
# Question 4 #
J_scores=c(95, 91, 88)
J_scores
J_scores_names=c("Statistics","Linear Algebra","Calculus")
J_scores_names
names(J_scores)=J_scores_names
J_scores
# Question 5 #
typeof(J_scores)#type result is "double"
# Question 6 #
John_scores=c(95, 91, 88)
Lyna_scores=c(96,94,97)
Cal_scores=c(88, 98, 85)
Scores=c(John_scores, Lyna_scores, Cal_scores)
Scores
Scores_matrix=matrix(Scores, nrow=3, byrow = TRUE)#creating matrix
Scores_matrix
colnames(Scores_matrix)=c("Statistics","Linear Algebra","Calculus")#naming columns
rownames(Scores_matrix)=c("John","Lyna","Cal")#naming rows
Scores_matrix
# Question 7 #
Scores_dataframe=data.frame(Scores_matrix)# converting matrix to data frame
Scores_dataframe
# Question 8 #
Country_names=c("USA", "India", "Brazil", "France", "Russia")
Total_cases=c(32669121, 16263695, 14172139, 5408606, 4744961)
Total_deaths=c(584226, 186928, 383757, 102164, 107501)
Corona_dataframe=data.frame(Country_names, Total_cases, Total_deaths)#creating dataframe from vectors
Corona_dataframe
# Question 9 #
mtcars
str(mtcars)
#cyl + last 4 are factor
for(i in c(2,8:11)){mtcars[,i]=as.factor(mtcars[,i])}#converting cyl and last four to factor
str(mtcars)#to check data type
New_mtcars=mtcars#renaming the dataframe
New_mtcars
str(New_mtcars)
save(df, file="New_mtcars")
df2 <- load("New_mtcars")#for when I want to view data again
