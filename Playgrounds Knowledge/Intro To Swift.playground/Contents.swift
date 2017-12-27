//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str) //Print the string

//******************************
//CONSTANTS and VARIABLES
//******************************

//Declare constant with the let keyword
let myConstant = 100; var myDog = "Nick" //semi colon is not necessary. If you need to add 2 lines in 1 line, then it's needed

//Declare variables with the var keyword
var myCounter = 0

//The type of a variable is inferred from it's value; e.g., float
var myGPA = 3.91

// The variable is inferred to Bool
var likeCoffee = true

//Type inference: swift allows us to omit the variable type when
//we define it. The compiler will infter the type based on initial
//value. This is called type inference

//Use colon ":" to annotate type
var mySemesterGPA: Float = 0.0

//More on type annotation
var greetingMessage: String

// Since each integer type is an object, we can retrieve the
//minumum and maxim properties of the integer type

//Max of UInt32
UInt32.max

//Min of UInt32
UInt32.min

//decimal: no prefix
var myDecimal = 49

//bunary: use 0b prefix
var myBinary = 0b000110001

//octal: use 0o prefix
var myOctal = 0o61

//hexadecimal: use 0xprefix
var myHex = 0x31

//We can also use arbitrary underscores to improve the
//readability of an integer

//Indicate the number: 1,200,932.92
var myNumber = 1_200_923.92 //make the number look cleaner

//indiate the double number: 0.123456789
var myDouble = 0.123_456_789

//Now we can assign value to a declared variable
greetingMessage = "How are you"

//But we cannot assign a value with an incorrect type
// greetingMessage = 14.0
//cannot assign float to a string. Error

//Okay to declare multiple related variables using the same type
var myCurrentGPA, myYear1GPA, myYear2GPA : Float

//Comment: Type safety
//Swift is a type safe language
//We are required to define the types of values stored in a variable
//If we attempt to assign a value to a variable that is of a wrong type
//we will get an error

//Unicode can be used as a constant and variable names
//Control + Command + Space
let 😀 = "I am happy"
print(😀)

let CanadaFlag = "🇨🇦"
let USFlag = "🇺🇸"
let 🇺🇸 = "United States of America"
let 🍰 = 3.14159

//The value of a variable can be change
var whereILiveNow = CanadaFlag

//The value of where I live not can be changed from Canada to US
whereILiveNow = USFlag

//However, we can't chagne a constant
let myOldestBrother = "Neil Young"

//This is a compile time error
// myOldestBrother = "David Smith" //THIS IS AN ERROR

//Type casting

//Floating point to integer conversion
let pi = 3.14159
let integerPi = Int(pi)

//Type identifier
//A type identifer refer to either a name type of a named alias
//or a named or compount type
typealias Point = (Int, Int)
let origin: Point = (0,0)

//A type identifer use a dot (.) syntax to refer to named types
//declared in other modules or nested within other types
// var someValue: ExampleModule.MyType

//You can print the value of a variable using the print statement
print(whereILiveNow)

//print the value of a constant
print(myOldestBrother)

//String Interpolation
//use backslash before the parentheses
print("\(myOldestBrother) is currently living in the \(whereILiveNow)")

//You can access the individual character values of a String
//Microprocessor can do prefetching for a sytax like for...in... making execution very fast
for char in "From 🇨🇦 to 🇺🇸".characters {
print(char)
}

//******************************
// STRINGS
//******************************

//You can use the map() method to retreive characters of a string
var myHello = "Hello"
myHello.map { //REGEX based
    print($0) //print first character and loop through
}

// Or assemble characters together to form a String
let char2: [Character] = ["🇨🇦", " ", "t", "o", " ", "🇺🇸"]
let str1 = String(char2)
print(str1)

//You can concatenate 2 strings like this"
var whereToGo = "From 🇨🇦" + " to 🇺🇸" //use the + operator
print(whereToGo)

//Converting a string
var myOriginal = "HelloWorld"

//print out "helloworld"
print("Converting to lowercase:" +  myOriginal.lowercased())

//print out HELLOWORLD
print("Converting to lowercase:" +  myOriginal.uppercased())

//Replacing all the occurences
var myLongString = "Once upon a time, there was a princess living in a castle."
print(myLongString.replacingOccurrences(of: "castle", with: "cottage"))

//Swift also allows us to create a string using a multiline string literal
var myMultiLine = """
This is a long message for everyone taking CS175. We have just learned how to create a string over multiple lines
using multiline string literal. Don't forget to include triple doulbe-quotes to mark the end of your paragraph. You can
even include another doulb equited phrase. "Just like this."
"""

//In Swift, substring is a slice of a string. Working wit substrings is efficient because a stubstring
//shares its storage with its original string. For a substring to have its own instance, we can create a
//new string and assign the substring to the string's initializer
//Does not create a new copy

var myDirectory = "/home/users/karan/"

//specify offsets
let begin = myDirectory.index(myDirectory.startIndex, offsetBy: 12)
let end = myDirectory.index(myDirectory.startIndex, offsetBy: 17)

//Create a substring by slicing the original string
var mySubstring = myDirectory[begin..<end] //12 up to 17 (not including 17) [12-16]

//create a new instance of String
let myName = String(mySubstring)

//print out "karan"
print(myName)

//******************************
// COMMENTS AND DOCUMENTATION
//******************************

//Use two forward-slashes for single line comments
//this is my first comment
//this is my second comment
// Use (*/) and (*/) to mark a block of code

/*
 I am inside of a block comment
 This ia a second line inside of the block
 */

//It is absolutely okay to use nested comment in swift
/*
 This is the comment in outer vlock
     /*
     This is a comment in the inner block
     */
 */

//Apple also uses CommonMark, a variant of Markdown lanauge for documenting Swift


///This shows how to document a function using triple-slash single line comments
/**
     Or document a function using common block with a slash and two asterisks
 */
func myFunction(name: String) -> Bool  {
    return false
}

//You can use either a parameters section or with inidivual paramter field

/**
 An useful function with documentation for parameters
 - paramaters:
 - name: the name of an object
 - description: the descrtiption of an object
 */
func myOtherFunction(name: String, description: String) -> Bool {
    return false
}

/**
 The same function with separate parameter keyword
 - parameter name: the name of the object
 - parameter descrption: the description of the object
 */
func otherFunction2(name: String, description: String) -> Bool {
    return true
}

/* Here is a list of keywords you can include anywhere in the descrption:
 - Attention
 - Author
 - Authors
 - bug
 - Complexity
 - Copyright
 - Date
 - experiment
 - important
 - invariant
 - Note
 - Precondition
 - Postcondition
 - Remark
 - Requires
 - seealso
 - Since
 - Todo
 - Version
 - Warning
 */

//Of course you can include any valid Markdown in the descrption

/// ---
/// # San Jose State University
/// ## Department of Computer Science
/// CS 175 is a **challenging** class:
/// + Mobile Programming
/// 1.  Using *Async Task*
///  Same code - indented by four spaces
/// ...
///     let myFn = myNewFunction()
/// ...
/// ---
/// See also: {Apple website}[www.apple.com]
func myNewFunction(name: String) -> Bool {
    return true
}

//******************************
// ARRAYS
//******************************

/*
 A collection groups multiple items into a single units
 The items are required to be the same type
 
 Swift provides three native collection types:
 * Arrays: data are stored in an order collection
 * Sets: data stored are unordered colleciton of unique values
 * Dictionaries: unordered collection of key-value pairs
 
 */

//initialize an array
var myArray = [1,2,3,4,5]
print(myArray[2]) //prints 3 as index starts with 0

//Append to the array
myArray.append(0)
print(myArray)

//Remove an element from a specific index
myArray.remove(at: 4)
print(myArray)

//Declare the type of the elements
var myFloats: [Float] = [1, 2, 3, 4, 5]
print(myFloats[2])

//Decalre an empty mutable array that can be used to store integers
var arrayInt = [Int]()

//This is another way to create an empty mutable array
//Either one is okay
var anotherArrayInt: [Int] = []

//We can define an array with 10 elements
//each element containing the number 9
var arrayRepeated = [Int](repeating: 9, count: 10)
print(arrayRepeated)

//Create a 2D Array with initialized values
var multiArrayOne = [[1,2], [3,4], [5,6]]

//Create an empty 2D Array
var multiArrayTwo = [[Int]]()

let newArray = [1,2,3,4,5,6]
print(newArray.first)

let first = newArray.first
let last = newArray.last

//Check the range to make sure that the index is not out of range
let arrayRange = [0,1,2,3,4]
if (arrayRange.count > 6) {
    print(arrayRange[6])
}

//******************************
// Set - Unorderly colletion of unique objects
//******************************

//Initializes an empty set of the String type
var mySet1 = Set<String>()

//Initializes a mutable set of the String type with inital values
var mySet2 = Set(["one", "two", "three"])

// Insert an item into the set
var mySet3 = Set<String>()
mySet3.insert("One")
mySet3.insert("One") //"inserted is false for duplicated object
mySet3.insert("Two")
mySet3.insert("Three")

//Use the count property to determine the number of items in a set
print("There are \(mySet3.count) items")

//The count is still "3" because the insert of duplicated string object was ignored

//Verify whether an item is contained in a set
var a: String = "One"
var isContained = mySet3.contains("One")
isContained = mySet3.contains(a)

// isContained will be set to 'true' because the set contains the string 'one'

// remove a single item in a set
var removedItem = mySet3.remove("Two")

//Now there are only 2 items
print("There are \(mySet3.count) items")

//This will remove all items from a set
mySet3.removeAll()

//Now there are 0 items
print("There are \(mySet3.count) items")

var mySet4 = Set(["1", "2"])
var mySet5 = Set(["Three", "Four"])

//newSet now contains "Three", "Four", "2", "1"
var newSet = mySet5.union(mySet4)

//subtract mySet4 from newSet
//newSmallerSet now contains "Three" and "Four"
var mewSmallSet = newSet.subtracting(mySet4)

//******************************
// Dictionary - collection of key-value pairs
//******************************

//Dictionaries provide a list of mapping between keys and values
var myDictionary = [1:"Apple", 2: "Orange", 3: "Pear"]
print(myDictionary[1]) //not position. using the key

//How to unwrap an optional -> let's have safe unwrapping of optional

print(myDictionary[1]!) //forced unwrapping using exclamation mark
//you're telling the compiler that you know 100% there is a value in here

if let fruit = myDictionary[1] {
    print("My favorite is \(fruit)")
}

//Alter a dictionary after you've creted it
myDictionary[2] = "banana"
print(myDictionary)

//Remove values from a dictionary
//Set the value to nil
myDictionary[1] = nil;
print(myDictionary)

//should return nothing (nil)
//This is not a good way to handle an optional
print(myDictionary[1])

//******************************
// Tuples
//******************************

//Return as many arguments as required

//Tuples group multiple values into a single compound value
let emergencyCallinUS = ("U.S", 911, "emergency sitaution")
let (country, number, description) = emergencyCallinUS
print("In \(country), you should dial \(number) for any \(description)")

//You can ignore parts of the tuple using an underscore (_)
let (place, _, _) = emergencyCallinUS
print("You are currently in \(place)")

//Or user can access the individual element values using index numbers
print("You are currently in the \(emergencyCallinUS.0); remember to call \(emergencyCallinUS.1) when you encounter an \(emergencyCallinUS.2).")

//******************************
// Optionals
//******************************

// nil cannot be used if constants or variables are not declared as optionals
var emergencyNumberToCall: Int? = 911 //telling the compiler that the type can be nil or contain a value
emergencyNumberToCall = nil

//You can either force unwrap the optional using the ! operator, or you can put it into a temporary constant using optional binding
var impllicitlyUnwrappedString: String!
var explicitlyUnwrappedString: Optional<String>

// The following shows the difference in behavior between an optional string and an implicitly unwrapped optional string when accessing
// their wrapped value as an explicit String:

let possibleString : String? = "An optional String"
let forcedUnwrapping: String = possibleString! //requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString //no need for an exclamation mark

//You can use an implicit unwrapped optional with optional binding, to check and unwrap its value in a single statement
if let definiteString = assumedString {
    print(definiteString)
}


//******************************
// Control Flow
//******************************

// Here is an if-else statement
var ILikeCoffee = true
if ILikeCoffee {
    print("Let's meet at a coffee shop")
} else {
    print("Let's meet at a tea house")
}

//For each statement uses cosed range operator (...)
for item in 1...10 {
    print("Item \(item): pencil #\(item)")
}

//The closed range operaotr can use varaibles
var s1 = 1
var s2 = 10
for item in s1...s2 {
    print("We have item \(item)")
}

// C style for-loop is deprecated in Swift
// Removed in Swift 3 and higher
// Bad performance wise. Cache has high change of hit-miss
//

//for (var i = 0; i < 10; i+=1) {
  //  print("Number \(i)")
//}

//Use the Swift style from now on
for j in 0..<10 {
    print("Number \(j)")
}
// (a..<b) is called half open range operator

// Use evens or odds to print in steps i+=2 or i+=3 or whatever
/*
 let minuteInterval = 5
 for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
         // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
 }
 */


//For-each statement works with array
let fruits = ["Apple", "Banana", "Cantaloupe", "Durain"]
for fruit in fruits {
    print("I like \(fruit)")
}

//It also works with dictionary
let basket = ["apple":8,"bananas":2, "cantaloupes":5, "durians":3 ]
for(kind, count) in basket {
    print("There are \(count) \(kind) in the basket")
}

//This is a while loop
var cnt = 0
while cnt < 10 {
    print("Loop: \(cnt)")
    cnt += 1
}

//Repeat while loop puts the evaluation of condition at the end
var cnt2 = 0
repeat {
    
    print("Repeat loop: \(cnt2)")
    cnt2 += 1
    
} while cnt2 < 5

//Switch statement handles each "case"
// There is no break!!!!

var myNumber2 = 1
switch myNumber2 {
case 1:
    print("uno")
case 2:
    print("dos")
case 3:
    print("tres")
default:
    print("That's it. I don't know anymore")
}

//You can use multiple value per case statement
var myNumber3: Int = 3
switch myNumber3 {
case 1, 2, 3:
    print("That's easy I know it in Spanish")
case 0, 4, 5, 6, 7, 8, 9:
    print("That's easy. I don't know it's Spanish")
default:
    print("Why is life so hard")
}

//Or use interval matching or range
switch myNumber3 {
case 1..<4:
    print("That's easy I know it in Spanish")
case 0, 4...9:
    print("That's easy. I don't know it's Spanish")
default:
    print("Why is life so hard")
}

//******************************
// Enumeration
//******************************

//Don't have to type out all the numbers
enum Planets: Int {
    case Mercury = 1
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturn
    case Uranus
    case Neptune
}

print("Jupiter is No.\(Planets.Jupiter.rawValue) in our solar system")


//******************************
// Functions in Swift
//******************************

//A function is a batch of code that can be told to run
func myFirstFunction() {
    let three = 3
    var five = 5
    five = three
    print("Five is \(five)")
}

myFirstFunction() //prints out "Five is 3"

//Function with arguments and return type (return type at the end of the function)
// arrow means return
func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}

// return is the same as java or any other language
func sayHelloAgain(personName: String) -> String {
    let greeting = "Hi, " + personName + ". Good to see you again!"
    return greeting
}

//You can specify arguments in order using the argument name
print(sayHello(personName: "Anna"))
print(sayHello(personName: "Karan"))

//function with no parameters
func sayHelloWorld() -> String {
    return "Hello, World!"
}

print(sayHelloWorld())

//function with multiple parameters
func sayHello(personName: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return sayHelloAgain(personName: personName)
    } else {
        return sayHello(personName: personName)
    }
}

print(sayHello(personName: "Tim", alreadyGreeted: true))

//Function without return values
func sayGoodbye(personName: String) {
    print("Goodbye, \(personName)")
}

sayGoodbye(personName: "Dave")

// The return value of a funciton can be ignred when called
func printAndCount(stringToPrint: String) -> Int {
    print(stringToPrint)
    return stringToPrint.characters.count
}

func printWithoutCounting(stringToPrint: String) {
    printAndCount(stringToPrint: stringToPrint)
}

printAndCount(stringToPrint: "Hello, World!")
printWithoutCounting(stringToPrint: "Hello, World!")

//functions with multiple return values
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

// it is okay to call a funciton insde the call to that function
func sum(myX x: Int, myY y: Int) -> Int {
    let result = x + y
    return result
}

let z = sum(myX: 5, myY: 6)
print(z)

// Default parameters
// a parameter can have a deault value so that caller can omit the parameter
class Destination {
    func goTo(_ place: String, Month x: Int = 10, Day y: Int = 15) {
        print("We are going to \(place) on \(x)/\(y)")
    }
}
//instantie a Destination vacation
let vacation = Destination()
vacation.goTo("Alaska")
//prints out 'We are going to Alaska on 10/15

vacation.goTo("Miami", Month: 11, Day: 15)
//prints out 'We are going to Miami on 11/15

//variable parameter means that the caller can supply as many values of this parater's type as desired
//variable length of the parameter

//variable parameter
func displayCars(AllCarModel cars: String ...) {
    for c in cars {
        print ("We have \(c) aailable for sale.")
    }
}
displayCars(AllCarModel: "Lexus", "BMW", "Toyota", "Nissan", "Ford")

//Modifiable parameters
//inout -> pass by reference
func removeCharacter2 (_ c: Character, from s: inout String) -> Int{
    var howMany = 0
    while let ix = s.characters.index(of: c) {
        s.remove(at: ix)
        howMany += 1
    }
    
    return howMany
}

var Str2 = "Hello"
let result2 = removeCharacter2("l", from: &Str2)
print(Str2)

//Functional programming
func doThis(_ f:() -> ()) {
    f()
}
func printThis() {
    print("Hello Class")
}

doThis(printThis)

//******************************
// Closures
//******************************

let names = ["Apple", "Banana", "Canaloupe", "Durian"]
func backwards(s1: String, _ s2: String) -> Bool {
    return s1 < s2
}
var reversed1 = names.sorted(by: backwards)
print("Closure expression: \(reversed1)")

//inline closure
var reversed2 = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
})
print("Inline closure: \(reversed2)")

//Inline closure: shorten to a single line
var reversed3 =  names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2 })
print("One line inline closure: \(reversed3)")

//closure -> inferring the type from context
var reversed4 =  names.sorted(by: {(s1, s2 ) -> Bool in return s1 > s2 })
print("Closure - inferring type from context: \(reversed4)")

//Closure: implicit returns from single expression closures
var reversed5 = names.sorted(by: {s1, s2 in s1 > s2})
print("Closure - implicit returns: \(reversed5)")

//Closure: shorthand argument names
var reversed6 = names.sorted(by: { $0 > $1})
print("Closure - shorthand argument names: \(reversed6)")

//Closure: operation function
var reversed7 = names.sorted(by: >)
print("Closure - operation function: \(reversed6)")

//Trailing closures
var reversed8 = names.sorted() { $0 > $1}
var reversed9 = names.sorted { $0 > $1 }

print("Closure - trailing \(reversed8)")
print("Closure - trailing \(reversed9)")

//******************************
// Capturing Values
//******************************

func makeIncrementer(forIncrement amount : Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)

incrementBySeven()
incrementBySeven()
incrementBySeven()

//******************************
// Grand Central Dispatch
//******************************

//create a serial queue
let serialQueue = DispatchQueue(label: "serialQueue")

//create a concurrent queue
let concurrentQueue = DispatchQueue(label: "asyncQueue", attributes: .concurrent)

class calcTest {
    func doCalc() {
        let x = 5
        let y = x * x
        _ = y/x
        
    }
    
    func calc(iterations: Int, job: String) {
        let start = Date().timeIntervalSince1970 * 1000
        for _ in 0..<iterations {self.doCalc()}
        let end = Date().timeIntervalSince1970 * 1000
        let duration = String(format: "%.2f", end-start)
        print("Time for \(job): \(duration)")
    }
}

let atest = calcTest()
//serialQueue.async {
//    atest.calc(iterations: 5, job: "serial task 1")
//}
//serialQueue.async {
//    atest.calc(iterations: 5, job: "serial task 2")
//}
//serialQueue.async {
//    atest.calc(iterations: 2, job: "serial task 3")
//}

// To make it sychronous
serialQueue.sync {
    atest.calc(iterations: 5, job: "serial task 1")
}
serialQueue.sync {
    atest.calc(iterations: 5, job: "serial task 2")
}
serialQueue.sync {
    atest.calc(iterations: 2, job: "serial task 3")
}

//Jobs in a concurrent queue won't block each other

concurrentQueue.async {
    atest.calc(iterations: 2, job: "Concurrent async task 1")
}

concurrentQueue.async {
    atest.calc(iterations: 3, job: "Concurrent async task 2")
}

concurrentQueue.async {
    atest.calc(iterations: 5, job: "Concurrent async task 3")
}
