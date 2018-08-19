#how to add numbers which are in the same row


name <- c('A','A','A','A', 'B','C')
age <- c(22,23,15,15,45,25)
rock <- data.frame(name, age)
rock$new <- sum(rock$age)
# row wise summing it up
#std, mean
#rock$sum <- apply(rock[c(2:3)],axis(1=row),func)
rock$sum <- apply(rock[c(2:3)],1,sum)

#finding the percentage of the age column
#rock$tot <- apply(rock[2],2,sum)
rock$percent <- (rock$age/rock$new)*100
rock

#rock$mark <- apply(rock[c(2)])
rock$mark <- NULL

rock$percent <- round(rock$percent,1)

#grouping it 10-30, 31-50 etc
#  USE   cut()
rock$new <- cut(rock$percent,c(0,20,30,100),c("a","b","c"))
rock
#infinte values
rock$new <- cut(rock$percent,c(-Inf,20,30,Inf),c("a","b","c"))
rock
# 3 equal groups
rock$new <- cut(rock$percent,3,c("a","b","c"))
rock

# UDF
div <- function(x,y){
a <-	x+y
b <-	x*y
c <-	x/y
return (c(a,b,c))
}

div(10,5)[c(1,3)]
#rock$fun <- rock$age + div(values,val)[which var a,b,c?] 
rock$fun <- rock$age + div(10,5)[3] 


#udf new col a-b

a <- c(10,20,30)
b <- c(8,28,36)
c <-data.frame(a,b)
c

sub <- function(x,y){
	 abs(x - y)
}

c$ans <- sub(a,b)
#c$ans <- abs(c$ans)








