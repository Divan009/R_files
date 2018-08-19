#csv = comma separated val
#first mention the path of the data
#setwd is set working dir
setwd("paste the path here(extra slash everywhere)")
#importing files
a <- read.csv("R1.csv")
b <- read.csv("R2.csv")

#merge files (a&b)
#by is case sensitive

#we get only the common part
a_b <- merge(a,b, by = "Id")
#what if i want the whole of a too(A-B)
a_b <- merge(x = a,y=b, by = "Id", all.x=TRUE)
#the whole set AUB 
a_b <- merge(x = a,y=b, by = "Id", all=TRUE)
#A intersection B (this is required more)
a_b <- merge(x = a,y=b, by = "Id", all= FALSE)

# rbind(is like append()) is binding of rows
#duplicate rows will be there
tripleH <- rbind(a,b)
#binding the column
id <- 1:4
cbind(id, tripleH)


name <- c('A','A','A','A', 'B','C')
age <- c(22,23,15,15,45,25)
sex <- c('f','m','f','f','f','m')
rock <- data.frame(name, age, sex)
#to check duplicate rows
rock[duplicated(rock),]
#will remove the duplicate rows
rock[!duplicated(rock),]
rock[!duplicated(rock$sex),]

#create a new column
rock$new <- ifelse(rock$sex == "M","Male","Female")
rock

rock$new <- ifelse(rock$sex == "F" & rock$age <= 20,
	"Young", ifelse(rock$sex == "F" & rock$age > 20,
	"Mature", "Male")

#Try this

rock$new <- ifelse(rock$sex == "f" & rock$age <= 20, "Young","") #or use "male" instead of blank
rock$new <- ifelse(rock$sex == "f" & rock$sex > 20, "Mature",rock$new)
rock$new <- ifelse(rock$sex == "m" , "Male",rock$new)

#deleteing the new column
rock$new <- NULL

#STAtistics
#deleteing sex col
rock$sex <- NULL
rock$new <- sum(rock$age)
# min(), max(), abs(), cumsum() cumulative sum
#will give the poistion of the min age
rock$new <- which.min(rock$age)
#using log, exp(), sqrt(), prod()
rock$new <- log(rock$age)
rock$new <- rock$age + 10
rock$new <- rock$age ** 2
rock$new <- rock$age ** (1/3)

#sort() we sort the rows
rock[order(rock$age),]
#descending order
rock[order(-rock$age),]

#multilevel sorting
rock[order(rock$sex,-rock$age, rock$name),]

#Ranking feat
rock <- rock[order(rock$age),]
rock$rank <- rank(-rock$age)

#concatenate name and age
attach(rock)
rock$new <- paste(name, age)
rock

rockattach(rock)
rock$new <- paste(name, age, sex, sep="@")
rock





















