#the plot function is used to draw points(markers) 
#in a diagram para 1 is x-axis, para 2 is the y-axis
#plot()
----------------------------------------------------
plot(1, 3)

#to draw more points you can use vectors
#draw poitns at 1,3 and 8,10
plot(c(1, 8), c(3, 10))

#you can do a lot of points
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

#to make it cleaner do
x <- c(1, 2, 3, 4 ,5)
y <- c(3, 7, 8, 9, 12)
plot(x, y)

#to draw a sequence of points do: 
plot(1:10)

#to draw a line add
plot(1:10, type = "l")

#in order to add labels use 
#main is title,
plot(1:10, main = "My Graph", xlab="The x-axis", ylab = "the Y axis")

#col adds color to the points
plot(1:10, col ="red")

#to change the size of points use cex
plot(1:10, cex=2)

#to cahnge the point shape format use pch (0-25)
plot(1:10, pch=25, cex =2)

#----------------------------------
#R Line
#This is how to handle lines in graphs I believe with R

#line Color
plot(1:10, type="l", col="blue")

#to change the with use lwd parameter
plot(1:10, type="l", lwd=2)

#line styles (use parameter lty (0-6))
#lyy =3 will mkae a dotted line
plot(1:10, type="l", lwd=5, lty=3)

#To do multiple lines use lines() with the plot() function
line1 <- c(1, 2, 3 ,4 ,5 ,10)
line2 <- c(2, 5, 6, 8, 9, 10)

plot(line1, type = "l", col = "blue")
lines(line2, type = "l", col = "red")

#in order to do scatter plots you can use plot()
#BUT you need two vectors of same length, one for the x-axis

x <- c(5, 7, 8, 7, 2, 2, 9, 4, 11, 12, 9, 6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y)

#labeling is just the same as earlier
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")

#to compare plots with another plots use points()
# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)

#-----------------------------------------
#In Order to do pie charts use Pie() (they go counter clockwise)
x <- c(10, 20, 30, 40)
pie(x)

#to change the start angle use the init.angle parameter
x <- c(10, 20, 30, 40)
pie(x, init.angle = 90)

#we can add lables to these as well need a vector of pies and labels
x <- c(10,20,30,40)

mylabel <- c("Apples", "Bananas", "Cherries", "Dates")
pie(x, label = mylabel, main= "fruits")

#we can change the colors of each pie with a vector of colors
colors <- c("blue", "yellow", "green", "cyan")
pie(x, label = mylabel, main = 'Fruits', col = colors)

#to a lits of explanatiosn use a legend()
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")
colors <- c("blue", "yellow", "green", "orange")
pie(x, label = mylabel, main = "Pie Chart", col = colors)

#ps can change the location of the legend
legend("bottomright", mylabel, fill = colors)

#bar charts ------------------------------------- 
#to do barcharts we can use barplots()

x <- c("A", "B", "C", "D")
y <-c(2, 4, 6, 8)

barplot(y, names.arg=x)

#you can use col here too!
barplot(y, names.arg=x, col = "red")

#can change the bar texture with the desnity parameter
barplot(y, names.arg=x, density=10)

#you can change the width of the bar using width parameter
barplot(y, names.arg = x, width = c(1, 2, 3, 4))

#horizontal bars can be do too
barplot(y, names.arg = x, horiz = TRUE)


