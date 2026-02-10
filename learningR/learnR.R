#do math in r
5+5

#to print to the console
"Hello World!"

#To Output Numbers
5

#There is print but isn't needed for basic things
print("Hello World!")

#You mihgt need print for loops
for (x in 1:10){
  print(x)
}

#Making Variables in R
name <-  "John"
age <- 40

#This below is how we output the variables
name
age
#we can use equal buts its not always prefered

#You can also concatenate (join two or more elements)
#throuhg using the paste() function
text <- "awesome"
paste("R is", text)

text1 <- "R is"
text2 <- "awesome"
paste(text1, text2)

#can do mathmethical with variables
#can't add string and number
num1 <- 5
num2 <- 10

num1 + num2

#Can assign the same value to mulitple variables
var1 <- var2 <- var3 <- "Orange"

var1 
var2
var3

#R data Types -----------

#numeric (can contain both decimals or no decimals)
x <- 10.5
class(x)

#integer (dontated with L NO DECIMALs)
x <- 1000L
class(x)

#complex (dealing with imaginary numbers i)
x <- 9i + 3
class(x)

#string/character
x <- "R is cool"
class(x)

#logical/boolean
x <- TRUE
class(x)

#Can do Type Conversion --------
x <- 1L #int
y <- 2 #numeric

#convert. from integer to numeric
a <- as.numeric(x)

#convert numeric - integer
b <- as.integer(y)

x
y

class(a)
class(b)

#can do all kinds of math -----

10 - 5

#theres math functions
max(5, 10, 15)
min(5, 10, 15)
sqrt(16)
abs(-5.7)
ceiling(1.4)
floor(1.4)

#to do multiline strings
str <- "hello this message is long,
so its in multiple lines,
see :)"

str #this will print with \n in the new lines
cat(str) #cat makes it print with new lines

nchar(str) #length of string

grepl(":)", str) #checks to see if characters are in a string
grepl("y", str)

#to combine strings use paste()
str1 <- "Hello"
str2 <- "World"

paste(str1, str2)

#to do "illegal characters like "" use \"
str <- "we are soooo \"Cool\", \nbut not really"
str
cat(str)

#can do boolean logic ---------
10 > 9
10 == 9
10 < 9

a <- 21
b <- 67
c <- 69

if (b > a) {
  print("b is BIGGER")
} else {
  print("B is not BIGGER :(")
}

#IF else logic ----

if (b > a && c > 69) {
  print("This is a cool combo")
} else if (a == b | b == c) { #| is or in R
  print("These wack numbers are equal")
} else {
  print("IDK what you want from me")
}

#while loops in R
i <- 1 
while (i < 6) {
  print(i)
  i <- i + 1
}

#Breaks ends the program
x <- 1
while (x < 4) {
  print(i)
  x <- x + 2
  if (x == 3) {
    break
  }
}

#Next skips and iterations without ending the loop
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) { #skips 3
    next
  }
  print(i)
}

#for loops -------
for (x in 1:10){
  print(x)
}

#prints every item in a list
fruits <- list("apple", "banana", "cherry")
for (x in fruits) {
  print(x)
}

#can do break with lists too
fruities <- list("apple", "banana", "cherry")
for (x in fruities) {
  if (x == "cherry") {
    break
  }
  print(x)
}

#also can do next
fruits2 <- list("apple", "banana", "cherry")
for (x in fruits2) {
  if (x == "banana") {
    next
  }
  print(x)
}

#creating Functions in R ---------------
my_function <- function() {
  print("Hello World!")
}

#To call the function
my_function()

#to pass arguments
new_function <- function(fname){
  paste(fname, "Griffin")
}

new_function("Peter")
new_function("LOIS")
new_function("Dang it its Meg")
new_function("Brain and Stewie")

#in order to set default values 
my_function <- function(country = "Mexicoooo"){
  paste("1 am from", country)
}
my_function("usa")
my_function()

#can set return values 
my_function <- function(x) {
  return (5 * x)
}
print(my_function(3))
print(my_function(6))

#you can nest functions :( like recursion and functional programs 
#i still have yet to master this lets hope this maybe helps

Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2, 2), Nested_function(3,3))

# another example didn't write this
Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) # To call the Outer_func
output(5)

#RECURSION !!!!! :(
tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k-1)
    print(result)
  } else {
    result = 0
    return (result)
  }
}

tri_recursion(6)


#txt in funciton only last in function so when
#it prints the global one not fantastic
txt <- "global variable"
my_function <- function() {
  txt = "fantastic"
  paste("R is", txt)
}
my_function()
txt # print txt

#global variables used both inside and outside functions
my_function <- function() {
  txt <<- "fantastic" #the global assignment operator (<<-) makes this variable gloable
  paste("R is", txt)
}
my_function()

print(txt)
