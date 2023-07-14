Titanic<-read.csv("Titanic - Modified.csv")
print(Titanic)



missing_values <- colSums(is.na(Titanic))
print(missing_values)
print(Titanic)


library(dplyr)
install.packages("dplyr")

colnames(Titanic)


options(max.print = 2511)
print(Titanic)





Titanic$gender <- ifelse(is.na(Titanic$gender), mean(Titanic$gender, na.rm = TRUE), Titanic$gender)
print(Titanic)

Titanic$age <- ifelse(is.na(Titanic$age), mean(Titanic$age, na.rm = TRUE), Titanic$age)
Titanic$age <- as.numeric(as.character(Titanic$age))
mean_age <- mean(Titanic$age, na.rm = TRUE)
Titanic$age[is.na(Titanic$age) | !is.finite(Titanic$age)] <- mean_age
print(Titanic)

Titanic$gender <-as.numeric(format(round(Titanic$gender,0)))
Titanic$age <-as.numeric(format(round(Titanic$age,0)))
Titanic$fare <-as.numeric(format(round(Titanic$fare,2)))
print(Titanic)
plot(Titanic$gender, col=5)
print(Titanic)

gender_counts <-table(Titanic$gender)
barplot(gender_counts,names.arg = c("0","1"),xlab = "gender index", ylab = "gender counts")


plot(Titanic$age,col=5)

plot(Titanic$fare,col=5)

mean(Titanic$gender)
median(Titanic$gender)
var(Titanic$gender)
sd(Titanic$gender)

mean(Titanic$age)
median(Titanic$age)
var(Titanic$age)
sd(Titanic$age)


mean(Titanic$fare)
median(Titanic$fare)
var(Titanic$fare)
sd(Titanic$fare)


hist(Titanic$gender)
hist(Titanic$age)
hist(Titanic$fare)

install.packages("deplyr")
install.packages("matrixStats")
library(matrixStats)

library(deplyr)
library(dplyr)

Titanic%>% summarise_if(is.numeric,sd)
