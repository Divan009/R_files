# c is used to combine
#age is a vector
age <- c(1,3,5)

# class(age) = shows me the dataType of age = 
class(age)

d <- c(1,2,"Diva")
class(d)  # will give me character

a <- factor(c(1,2,3,1,3))
class(a)
#i can use levels , by typing the var 'a'

#DataFrame
name <- c("d","i","v")
age <- c(1,3,5)
sex <- c("f","m","f")

#creates a table of the values
under <- data.frame(name, age, sex)

#to query
class(under$name)  #is a factor

#changing the type to character
under$name1 <- as.character(under$name)

#creates another rock column with values same as 'name'
under$rock <- as.character(under$name)

#shows all the properties of 
str(under)

#all of the strings are characters not factors
under <- data.frame(name, age, sex, stringsAsFactors=FALSE)
str(under)

#to make a copy of dataframe
john_cena <- under

#to see few heads of dataframe
#john_cena[row,col]
john_cena[,c(1,3)]
john_cena[c(5,7),c(1,3)]

#if i dont know the index of age etc
john_cena[,c("age","name")]

#how to get the top 6 row
head(john_cena)

#to get bottom 6 row
tail(john_cena)

#to get 2-3 rows
head(john_cena,2)

#to get middle rows
john_cena[c(3:5),]

#to get the length of the 
nrow(john_cena)

#to get the columns 
ncol(john_cena)

#filtering is in row
#to get the ages less than 20
kane <- john_cena[john_cena$age <20,]

john_cena[john_cena$sex == "M",]


# AND OR for Multiple conditions
#ANDDDDDDDDDDDDD
john_cena[john_cena$age <20 & john_cena$sex == "F",]

#OOOOOOORRRRRRRRRRRRRRR
john_cena[john_cena$age <20 + john_cena$sex == "F",]














