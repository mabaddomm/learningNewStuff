
//This is how to do comments btw
//This is a print statment
print("Codecademy")

/* this is a multiline comment in swift 
see multiple lines
 */

 //For declaring Variables

 //"Var" is variables they are mutable meaning they can be chaanged
var weird = "weird"

//another example
var year = 2025
print(year)
 //"Let" is constants they are immutable

 let notWeird = "NotWeird"

 //Examples of just use arithemtic operators
var amount = 18.50
var tip = amount * 0.2
print(tip)

//Swift lets us use compound assignment operators:
var apples = 16
apples -= 4
print(apples)

apples /= 2
print(apples)

//Swift also has type annotatiosn for declaring variables
var book: String = "Just Kids"
var pageCount: Int = 278
var readingTime: Int
readingTime = 5
print(readingTime)

//String interpolation In prints
var age: Int
age = 20
print("I am \(age) years old!!!")

//Constants for variables (by using let instead of var)
let months = 4 

//Random Swift Example
var tempf: Double = 70.1  
var tempc: Double
tempc = (tempf - 32) / 1.8
print("The temp is \(tempc) degrees Celsius.")

//Some Variable types in Swift
var randomInt: Int
var randomDouble: Double
var randomString: String
var randomBool: Bool 


//Conditionals Example
var learningToCode = true
//learningToCode = false
if learningToCode {
  print("Don't forget to take breaks! You got this")
}

//Conditional If else example
var wearGlasses = true
if wearGlasses {
  print("I wear glasses")
} else {
  print("I don't wear glasses")
}

//Comparision Operator example: 
let tuneSquadPoints = 78
let monstarsPoints = 77
// Write your code below 🏀
if tuneSquadPoints < monstarsPoints{
  print("TuneSquad WINS")
} else {
  print("MONSTARS WINS")
}

//Long conditional with else and else if 
var abbreviation = "SP"
if abbreviation == "SP" {
  print("Spanish")
} else if abbreviation == "EN" {
  print("English")  
} else if abbreviation == "JP" {
  print("Japenses")
} else if abbreviation == "RU" {
  print("russian slang")
} else {
  print("Abbreviation not found.")
}

//Code used for the teneray condtional operator
var windy = true 
if windy {
  print("Sails up")
} else {
  print("Motor on")
} 
// This is a teneray condtional operator A:B?C
/*A is the condtion B is waht to do if true C is if its false*/
windy ? print("Sails up") : print("Motor on")

//Switch Statment 
var secretIdentity = "Tony Stark"
var superheroName: String 
 
if secretIdentity == "Tony Stark" {
  superheroName = "Iron Man"
} else if secretIdentity == "Natasha Romanoff" {
  superheroName = "Black Widow" 
} else if secretIdentity == "Prince T'Challa" {
  superheroName = "Black Panther"
} else if secretIdentity == "Thor" {
  superheroName = "Thor"
} else {
  superheroName = "Unknown"
}

//This is like the condtional above switch staments are good for matcheing a case and giving it an expression then
switch secretIdentity {
  case "Tony Stark":
    superheroName = "Iron Man"
  case "Natasha Romanoff":
    superheroName = "Black Widow"
  case "Prince T'Challa":
    superheroName = "Black Panther"
  case "Thor":
    superheroName = "Thor"
  default: 
    superheroName = "Unknown"
}
print(superheroName)

//In this example of switch statments we are using interval matching to see if the episode is in a range
var episode = 5
var villain: String 

switch episode {
  case 1...3:
    villain = "Emperor Palpatine"
  case 4...6:
    villain = "Darth Vader"
  case 7...9:
    villain = "Kylo Ren"
  default:
    villain = ""
}
print(villain)

//This is an example of a compound case for switch statments where there are a group of diff planents that var planent could be long to and his multiple options
var planet = "Mars" 

switch planet {
  case "Earth", "Mercury", "Venus", "Mars":
    print("Terrestrial planet")
  case "Saturn", "Jupiter", "Uranus", "Neptune":
    print("Jovian planet")
  default:
    print("Unknown planet")
}

//This switch  statments uses wheres to temp assign x as wholeNumber to perform things to X and do more complicated conditionals
var wholeNumber = 15 

//This line just makes whole number a randomly generated number between 10-20
wholeNumber = Int.random(in: 10...20)
print(wholeNumber)
// switch statement code with where clause
switch wholeNumber {
  case let x where x % 2 == 0:
    print("Composite")
  case let x where x % 3 == 0:
    print("Composite")
  default: 
    print("Prime")
}

//Logical AND operator example &&
var midnight = true 
var date = "January 1, 2020"

if midnight && date == "January 1, 2020" {
  print("It's the start of a new decade!")
}

//Logical OR example ||
var carInMotion = false
var insideACar = true

if carInMotion || insideACar {
  print("Safety first! Buckle up")
}

//NOT example !
var feelingWell = true

if !feelingWell {
  print("Have some vitamins and take care of yourself 🤒")
} else {
  print("Embrace the day!")
}

//Example using multiple logic operations in one line
var correctPassword = false
var lessThanThreeTries = true 
var accessThroughTouchID = true
var unlock: Bool

if correctPassword && lessThanThreeTries || accessThroughTouchID {
  unlock = true
} else {
  unlock = false
}

print(unlock)

//Can use parethesis to overide swifts default precedence
let bool1 = (true || false) || false || false 

let bool2 = !true || (false && false || true)

let bool3 = !(false && true) && (false || false)

print(bool1) // should be true
print(bool2) // should be true
print(bool3) // should be false

//for loop in swift
for age in 1...35 {
  print("Are you \(age)?")
}


//This is another way to do a a loop a stride
//We make num start at 3 go to 0 and goes down by 1
for num in stride(from: 3, to: 0, by: -1) {
  print(num)
}
print("GO!")

//This one counds from 1 to 3 by 
for num in stride(from: 1, to: 3, by: 1) {
  print(num)
}
print("GO!")
//This is the equivalent for loop:
for num in 1...3 {
  print(num)
}
print("GO!")

//this loop iteratos over a string
var funFact = "exlxephxxxaxnts xcaxxn'xxt xxxjxumxpx."

for char in funFact {
  if char != "x" {
    print(char)
  }
}
//if we don't have like a i or num swift lets us use the underscore instead of a named vaariable
for _ in 1...15 {
  print("This is my random thing")
}

//here we use a continue to skip over odd numbers
for num in 1...9 {
  if num % 2 == 1 {
    continue
  }  
  print(num)
}

print("Who do we appreciate?")
print("YOU!")

//Heres the same thing if we used switch statment instead of x
for num in 1...9 {
  // Add your code below 🔢 
  switch num {
    case let x where x % 2 == 1: 
      continue 
    default:
      print(num)
  }
}

print("Who do we appreciate?")
print("YOU!")

//This an example of a break statement in a loop
//It used if we want a loop to stop based on a condition
//In this case if our counter is the guessed number
var guessedNum = Int.random(in: 1...15)
for counter in 1...15 {
  if counter == guessedNum {
    print("It's \(guessedNum)!!")
    break
  }
  print("Is it \(counter)?")
}


//Example of a while loop in swift
var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

while guess != magicNum {
  print("You guessed \(guess), and the number was \(magicNum)")
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
}
print("You're right it was \(guess)!")

//Another basic loop example: 

//Its going to be commented out for output readability for now 
/*
for num in 1...100{
  if num % 2 == 0 {
    print("Num: \(num) is an even number")
  } else {
    print("Num: \(num) is an odd number")
  }
} */

// Arrays in Swifts
// how to create an empty array of a certain type
// var name = [Type]()

var subwayAdult = [Int]()
print(subwayAdult)

var subwayChild = [Int]()
print(subwayChild)

//This is inplicitiy defining an arrary with values
var subwayAdult2 = [800, 1200, 1500]
print(subwayAdult2)
//This is explicityly defining an arrary with values and a type
var subwayChild2: [Int] = [400, 600, 750]
print(subwayChild2)

//Indexing arrarys in swift
var temperature: [Int] = [66, 68, 72 ]

print(temperature[0])

var countingRhyme = ["eeny", "meeny", "miny", "moe"]
print(countingRhyme)
//Can using .count property to get hte length of the arrary 
print(countingRhyme.count)

//to add things to lists use .append or +=
countingRhyme.append("Hello")
print(countingRhyme)

countingRhyme += ["What", "You doing"]
print(countingRhyme)

var dna = ["ATG", "ACG", "GAA", "TAT"]
//We can use insert and remove and the index to remove things
dna.insert("GTG", at: 3)
print(dna)
dna.remove(at: 0)
print(dna)

//basic loop with an arrary
 var list = [2, 4, 3, 6, 1, 9]

// Write your code below 🧮
var evenSum = 0
var oddSum = 0
for i in list {
  if i % 2 == 0 {
    evenSum += i
  } else {
    oddSum += i }
}

print("Sum of even numbers is \(evenSum)")
print("Product of odd numbers is \(oddSum)")

/* We can use sets which are like arrarys but don't allow duplicates sets also are unordered and can be
outputed in different orders
Don't rely on sets for ordered things */

//creating an empty set
//var name = Set<type>()
var consonants = Set<Character>()
print(consonants)

//Creating a set with values 
//var setName: Set = [Value1, Value2, etc..]
var vowels: Set = ["A", "E", "I", "O", "U"]
print(vowels)

var sockDrawer: Set = ["Red Polka Dots", "Blue Stripes", "Plain Whites"]

//.empty checks if a set is empty true or false
//.count gets us the number of things in the set
if sockDrawer.isEmpty {
  print("Time to add some more socks!")
} else {
  print("We have \(sockDrawer.count) pairs of socks.")
}

var friends: Set = ["Harry", "Ron"]
//We can use .insert to add things to the set

friends.insert("Hermione")
//Since ron is already in the set he doesn't get added a second time
friends.insert("Ron")
print("Friends: \(friends)")

//We can use .remove or .removeAll() as well
friends.remove("Ron")
print(friends)
friends.removeAll()
print(friends)

var coffeeFlavors: Set = ["Caramel", "Mocha", "Pumpkin Spice", "Vanilla", "Blueberry"]

//We can use .contains() to check if a element exist in our set
if coffeeFlavors.contains("Blueberry") {
  print("One blueberry coffee coming right up.")
} else {
  print("We do not serve that coffee flavor here.")
}


var thingsToPack: Set = ["Bathing Suit", "Clothes", "Sunglasses", "Sunscreen", "Favorite Book", "Phone Charger"]
var suitcase = Set<String>()

//Simple set loop[ puting things to pack into suitcase
for item in thingsToPack {
  suitcase.insert(item)
}
print(suitcase)

var swim: Set = ["Turtles", "Ducks", "Puffins", "Shark"]
var fly: Set = ["Humming birds", "Bats", "Ducks", "Puffins"]
//Can use.intersection to get communality between things in a set
var swimAndFly = swim.intersection(fly)
print(swimAndFly)

//can use .union to connect two sets
var bothSwimFly = swim.union(fly)
print(bothSwimFly)

//to get just the different things from both of the sets uses .symmetricDifference
var difference = swim.symmetricDifference(fly)
print(difference)

//To get only stuff thats in set a and notthing from set b (even items they have in common)
//Use .subtracting
var subtractAnimals = swim.subtracting(fly)
print(subtractAnimals)

//Two ways to create an empty dictionary in swift

//Dictioary Literal Style
//var dictionaryName: [KeyType: ValueType] = [:]
var emptyLiteral: [String: Int] = [:]


//Initializer syntax
//var dictionaryName = [KeyType: ValueType]()
var emptyInitializer = [String: Bool]()

//Making dictionary with values

var roleModels: [String: String] = [
  "Mr. Rogers": "Fred McFeely Rogers",
  "The Crocodile Hunter": "Stephen Robert Irwin",
  "Bill Nye the Science Guy": "William Sanford Nye"
]
print(roleModels)

//We can make dictionaries with just type inference in swift and not state them

var movieYears = [
  "Finding Nemo": 2003,
  "Toy Story": 1995
]
print(movieYears)

//In order to add to a dictionary jsut make a new key value pair like this 
movieYears["Iron man"] = 13
print(movieYears)

var abbreviations = [
  "LOL": "Laboring Over Latkes",
  "LMK": "Let Me Know",
  "BRB": "Bringing Radishes Back",
  "GJOYC": "Great Job On Your Code"
]

//Using subscript syntax to update dictionary
abbreviations["LOL"] = "Laugh Out Loud"

//Using .updateValue() to update dicitonary
abbreviations.updateValue("Be Right Back", forKey: "BRB")

print(abbreviations)

var rainbowHex = [
  "red": "#ff0000",
  "pink": "#ffc0cb",
  "yellow": "#ffff00",
  "maroon": "#800000",
  "green":  "#00ff00",
  "blue": "#0000ff",
  "violet": "#ee82ee"
]

//To get rid of a element use nil
rainbowHex["maroon"]=nil
//We can also use .removeValue()
rainbowHex.removeValue(forKey: "pink")
//To get rid of the entire dictionary use .removeAll()
rainbowHex.removeAll()
print(rainbowHex)

//Can use .isEmpty on dictionary
print("Is movie year  Empty?: \(movieYears.isEmpty)")

//Can use .count on dictionary
print("Number of Movie YEars: \(movieYears.count)")

var flowerNames = [
  "Lily": "Lilium",                
  "Sunflower": "Helianthus", 
  "Orchid": "Orchidaceae", 
  "Daffodil": "Narcissus"
]

//Since we may not know wether a key has a value we get an optional(value) there are two ways to get rid of the optional and use it as a value

//Using subscript syntax !
var sunflowerScientific = flowerNames["Sunflower"]!
print(sunflowerScientific)

//We can use if-let statment to assign the value as a way to check if the key value pair exists
if let lilyScientific = flowerNames["Lily"] {
  print("A lily is referred to as a \(lilyScientific) in the science community.")
}

//To iterate over a dictionary
for (movieName, movieYear) in movieYears {
  print("\(movieName) was released year \(movieYear)")
}

//in dictionaries we can get just the keys .keys or just the values using just .values
print(movieYears.keys)
print(movieYears.values)

//we can iterate just the keys or values if we want 
for movieN in movieYears.keys {
  print(movieN)
}

//Writing Functions in Swift
/* func functionName() -> returnType{
  other code
} */

//Since we aren't returning naything we can leave returnType empty or do -> Void
func directionsToTimesSq() {
  print("Walk 4 mins to 34th St Herald Square train station.")
}

//To call function just do this
directionsToTimesSq()

//Example Function
let weight = 70.0 // in Kilograms
let height = 1.73 // in Meters

func findBMI() -> Double {
  let bmi = weight / (height * height)
  return bmi
}

print(findBMI())

//Funcrtions that use parameters
/* func someFunction(paramName: paramType) ->
returnType {
  code
}*/
func findCircumference(diameter: Double) -> Double {
  return 3.14 * diameter 
}

var result = findCircumference(diameter: 20.20)
print(result)

//Second Example:
func timeToDestination(distance: Int, speed: Int) -> Int {
  let time = distance / speed
  return time
}

print(timeToDestination(distance: 6836, speed: 560))

var friendsList = [String]()

//this funciton uses argument labels so whenever we call the function we have a label for the arugment that is used. In the funciton however we use the actual argument name
func addFriend(named friendName: String) {
  friendsList.append(friendName)
}

addFriend(named: "Alice")
addFriend(named: "Bob")
addFriend(named: "Cindy")
print(friendsList)

let adults = 2
let students = 15 

//If we didn't want to have to give a label or the parameter named when the funciton is called we can use the underscore _ as the label. In swift this means functions don't need to take the parameter name when it gets called

//This make function calls look like other languages like python

func museumEntry(_ numAdults: Int, _ numStudents: Int) -> Int {
  let studentTicket = 14
  let adultTicket = 25
  let total = (studentTicket * numStudents) + (adultTicket * numAdults) 
  return total
}

print(museumEntry(adults, students))

//If you wanted to return multiple values from a function you could use a tuple or an arrary heres an example

func favoriteCuisine() -> (name: String, dish: String) {
  return ("AMERICAN", "WHOPPER")
}

//If we used a tuple we could use dot sytanc then
let cuisine = favoriteCuisine()

print("My favorite \(cuisine.name) dish is \(cuisine.dish)!")

// Implicity Returns a little weird to be honest but in the simpliest terms, its a way to write the return without a return 
func findRemainder( dividend: Int, divisor: Int)-> Int {
    //return dividend % divisor
    //We could swiitch between the abovce and below statment
    dividend % divisor
}

print(findRemainder(dividend: 10, divisor: 4))

// Heres an example of how we could use default parameters


func bookingTicket(passengerName: String = "Marcus", seatClass: String = "Economy", timeOfDeparture: Int) -> String {
  return "\(passengerName), your seat class is \(seatClass), and you will be departing at \(timeOfDeparture)"
}

//See how parameters with default values can be changed but also ommitted form the function call
print(bookingTicket(timeOfDeparture: 9))
print(bookingTicket(seatClass: "Business", timeOfDeparture: 9))

//Swift has variadic paremter type. it is a type that accepts zerom of more values of a certain type. sorta like a arrary to use it use ... , a swift function cannot have more than one variadic paramter type. Can then be used like in loop too!!!

func avgSongLength(times: Int...) -> Int {
  var total = 0
  for time in times {
    total += time
  }
  return total / times.count
}

print(avgSongLength(times: 183, 176, 180, 176, 184, 179, 181, 180, 172, 178))

var currentGeneratorState = "Off"

//If we want to modifiy are paramters / arguments passed in a function we can IN-Out parameters

func generators(powerOutage: Bool, state: inout String) {
 if powerOutage {
  state = "On"
 } else {
  state = "Off"
 }
}

generators(powerOutage: true, state: &currentGeneratorState)

print(currentGeneratorState)

//We can use structs to make our own data types
struct emptyBook {
  var title: String
  var pages: Int
}

//If we can just put a value inside for default values heres a example with a new book
struct Book {
  var title = ""
  var pages = 0
}

//To get in isntance of a struct just put it to a variable
var myFavBook = Book()

//To access of change the values in the book use dot syntax like below
print(myFavBook.pages)
myFavBook.pages = 640
print(myFavBook.pages)
myFavBook.title = "Jurassic Park"
print(myFavBook.title)

  //We can add init () netod if our struct instances differ a lot and default values aren't the best
struct initBook {
  var title: String
  var pages: Int
  init(title: String, pages: Int) {
    self.title = title
    self.pages = pages
  }
}

//How to call an instance of this struct
var theHobbit = initBook(title: "The Hobbit", pages: 300)

//We can also user memberwise initialization where we don't have an a init function it just changes how we call the function and decrease readability

struct Band{
  var genre: String
  var members: Int
  var isActive: Bool
}

var maroon5 = Band(genre: "pop", members: 5, isActive: true)

//We can add methods to our structs that way only our structs have those methods thagt act like function
struct methodBand {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
    return "..."}
  }

  //This is a mutating method. It allows us to change an instance's properties using a instance method'
  mutating func changeGenre(newGenre: String) -> String {
    self.genre = newGenre
    return self.genre
  }
}

var fooFighters = methodBand(genre:"rock", members: 6, isActive: true)
print(fooFighters.pumpUpCrowd())

var journey = methodBand(genre: "jazz", members: 5, isActive: true)
//Heres the example of the mutating method change the genre propety
var bandsNewGenre = journey.changeGenre(newGenre: "rock")
print(bandsNewGenre)

//This function tells the type of variable or struct a varaible is 
print(type(of: journey))

//This is how we can explicity type a variable as a instance of the Band struct
var bts: methodBand = methodBand(genre: "kpop", members: 7, isActive: true)

struct Finch {
  var lengthInCm: Double
  var nestLocation: String

  init(lengthInCm: Double, nestLocation: String) {
    self.lengthInCm = lengthInCm
    self.nestLocation = nestLocation
  }
}

var groundFinch = Finch(lengthInCm: 15.0, nestLocation: "Bush")
/*This struct shows the in general strcuts are value types
This means that every time an instance is created of copied that new instance has its own set of unique values
*/
var cactusFinch = groundFinch
cactusFinch.nestLocation = "Cactus"
print(cactusFinch.nestLocation)
//See how when we change the cactus nest location only the cactus one was changed even though it was first a groundfinch, but the groundFinch nestlocation remains unchanged
print(groundFinch.nestLocation)
// Add your code below 🐦

class simpleRestaurant {
  var name = ""
  var type = [""]
  var rating = 0.0
  var delivery = false

}


//HEres how we would do classes in swift
class Restaurant {
  var name = ""
  var type = [""]
  var rating = 0.0
  var delivery = false

   //This adds the init method for declaring class instances with values
  init(name: String, type: [String], rating: Double, delivery: Bool) {
    self.name = name
    self.type = type 
    self.rating = rating
    self.delivery = delivery
  }
}

//making a instant of this class and changing values
var bobsBurgers = simpleRestaurant()
bobsBurgers.name = "Bob's Burgers"
bobsBurgers.type = ["Burgers", "Fast Food"]
bobsBurgers.rating = 3.5
bobsBurgers.delivery = true

print(bobsBurgers.name)
print(bobsBurgers.type)
print(bobsBurgers.rating)
print(bobsBurgers.delivery)

var laRatatouille = Restaurant(name: "La Ratatouille", type: ["French"],rating: 4.7, delivery: false)

print(laRatatouille.name)
print(laRatatouille.type)
print(laRatatouille.rating)
print(laRatatouille.delivery)

//Below is an example of inheritance delievery order is a subclass of the order class
//It gets all of its attrivutes and gets a new one only to delivery order class
class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}

class DeliveryOrder: Order {
  var deliveryFee = 2.0

  //This is how we would override a function for the super class to find what our subclass needs
  override func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Delivery:  $\(deliveryFee)")
    print("Total:     $\(total)")
  }
}


var order2 = DeliveryOrder()

order2.items = ["Ramen", "Diet Coke"]
order2.subtotal = 14.69
order2.tip = 2.00
order2.deliveryFee = 3.00
order2.total = 19.69

order2.printReceipt()


//This instance of the order class was jsut a copy and pass for ease of use, but shows that class are pass by references unlike structs that are pass by copy
class passbyReferenceOrder {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0
  
  init(items: [String], subtotal: Double, tip: Double, total: Double) {
    self.items = items
    self.subtotal = subtotal
    self.tip = tip
    self.total = total
  }
}

var order1 = passbyReferenceOrder(items: ["Chili Fries", "Lemonade"], subtotal: 8.75, tip: 2.0, total: 12.75)

var order8 = order1     
order8.total = 0.0
//When we print the totals it shows that it's pass by reference thorught the print statements
print(order8.total)
print(order1.total)


print("This is the End of the CodeAcademy Swift Tutorial and MY Notes For It :)")