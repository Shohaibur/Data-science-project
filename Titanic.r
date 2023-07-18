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

#round figure
Titanic$gender <-as.numeric(format(round(Titanic$gender,0)))
Titanic$age <-as.numeric(format(round(Titanic$age,0)))
Titanic$fare <-as.numeric(format(round(Titanic$fare,2)))
print(Titanic)

plot(Titanic$gender, col=5)
print(Titanic)

gender_counts <-table(Titanic$gender)
barplot(gender_counts,names.arg = c("0","1"),xlab = "gender index", ylab = "gender counts")

# Calculate the counts for each category in the "sibsp" attribute
sibsp_count <- table(Titanic$sibsp)

# Create a bar plot with appropriate names for the categories
barplot(sibsp_count, 
        names.arg = c("0", "1", "2", "3", "4", "5", "8"), 
        xlab = "sibsp", 
        ylab = "Count",
        main = "Distribution of sibsp")
plot(Titanic$sibsp, col=5)

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

mean(Titanic$sibsp)
median(Titanic$sibsp)
var(Titanic$sibsp)
sd(Titanic$sibsp)

mean(Titanic$parch)
median(Titanic$parch)
var(Titanic$parch)
sd(Titanic$parch)


mean(Titanic$fare)
median(Titanic$fare)
var(Titanic$fare)
sd(Titanic$fare)


mean(Titanic$survived)
median(Titanic$survived)
var(Titanic$survived)
sd(Titanic$survived)





hist(Titanic$gender)
hist(Titanic$age)
hist(Titanic$fare)

install.packages("deplyr")
install.packages("matrixStats")
library(matrixStats)


library(dplyr)

Titanic%>% summarise_if(is.numeric,sd)

