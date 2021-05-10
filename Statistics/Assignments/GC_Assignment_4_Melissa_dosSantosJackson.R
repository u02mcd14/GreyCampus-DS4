#Data 1
#Sample size, n, 77882 from 57 countries
#36.2% Men should have more right to a job than women
#13.8% of people have a university degree or higher
#3.6% of people fit both criteria
#Question 1: Are agreeing with the statement "Men should have more right to a 
#job than women" and having a university degree or higher disjoint events?
#Answer1# 
#No they are not, as disjoint events means that both events cannot occur simultaneously.
#The data states that 3.6% of people fit both criteria of "Men should have more right to a job than women" 
# and 13."people have a university degree or higher"
#Question 2: Draw a Venn diagram summarizing the variables and their associated probabilities.#
#Event 1 = A - 36.2% Men should have more right to a job than women
#Event 2 =B - 13.8% of people have a university degree or higher
Sample=100
Men_job=36.2
Degree=13.8
Both=3.6
venn.plot <- draw.pairwise.venn((Men_job+Both), (Degree+Both), Both, c("Men_Job", "Degree"))
#Question 3: What is the probability that a randomly drawn person has a university degree or higher or agrees with the statement about men having more right to a job than women?#
#Answer 3# Probability of Event 1 + Event 2 - Event (1&2)
Question3=(Men_job+Degree)-Both
Question3
#Question 4: What percent of the world population do not have a university 
#degree and disagree with the statement about men having more right to a job 
#than women?#
#Answer 4#
A.=100-Men_job
A.
B.=100-Degree
B.
A.*B./100#probability of A and B not occuring =56%
#Question 5: Does it appear that the event that someone agrees with the statement
#is independent of the event that they have a university degree or higher?
#Answer 5#
(Men_job/100)*(Degree/100)#if A * B= A and B then they are independent. In this instance they are not as AandB(3.6%) does not equal A*B(5%)

#Question 6: What is the probability that at least 1 in 5 randomly selected people to agree with the statement about men having more right to a job than women?#
Question_6=1-(A./100)^5
Question_6
##Data 2##
#25.9% of Swaziland has HIV
#Eliza test is 99.7% accurate for those who carry HIV
#ELIZA test is 92.6% accurate for those who do not carry HIV 
##Question1##
Swaziland
HIV=0.259
pos_HIV=0.997
HIVandpos=HIV*pos_HIV
HIVandpos#=0.2582
neg_HIV=0.003
HIVandneg=HIV*neg_HIV
HIVandneg#=0.0008

No_HIV=0.741
pos_noHIV=0.074
neg_noHIV=0.926#
noHIVandpos=No_HIV*pos_noHIV
noHIVandpos#=0.0548
noHIVandneg=No_HIV*neg_noHIV
noHIVandneg#=0.686

Prob_HIV_given_pos=HIVandpos/(HIVandpos+noHIVandpos)#bayes theorem
Prob_HIV_given_pos#=0.825

##Question 2##
dbinom(8, size = 10, p = 0.13)#=2.77*10^-6

##Question3##

n=245
p=0.25
miu=n*p
sigma=sqrt(n*p*(1-p))

pnorm(70, mean = miu, sd = sigma, lower.tail=FALSE)#=0.0984

##Question 4##
dbinom(6, size = 10, p = 0.56)#=0.243
