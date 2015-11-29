import UIKit

/*

Strings ***************************************************************************************************************************

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    
    //return cheese
    return "My favorite cheese is " + cheese + "."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."


/*

Arrays & Dictionaries ***************************************************************************************************************************

*/

//let numberArray = [1, 2, 3, 4] // had to remark this out because it is a let so can't 'add' to it.
// Add 5 to this array
// WORK HERE
let numberArray = [1, 2, 3, 4, 5]


//let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
// created new dictionary since the original was created with a let which can't be changed?
let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four", 5 : "five"]

/*

Loops ***************************************************************************************************************************

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE

for myLoop in 1...10 {
    println("Print the number: \(myLoop)")
    
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

for myHalfLoop in 1..<11{
    println("These are my half closed loop numbers..: \(myHalfLoop)")
}

// ***************************************************************************************************************************

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    // declare and initialize an array of strings [] indicates an array
    var favDrinksList:[String] = []
    for (myItem) in characters {
        println("The item is..: \(myItem).")
        let favDrinks = myItem["favorite drink"]! // the ! states to unwrap the dictionary item
        favDrinksList.append(favDrinks) // append is used in swift like addObject in Objective-C
    }
    return favDrinksList
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Optionals ***************************************************************************************************************************

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    let userEmail = userDict["email"]
    let unWrappedUserEmail:String = ""
    if userEmail != nil{
        let unWrappedUserEmail = userEmail!
        println("Value.: \(unWrappedUserEmail)")
        return unWrappedUserEmail
    }else {
        let unWrappedUserEmail = "" //+ "The user has no email."
        println("Value..: \(unWrappedUserEmail)")
        return unWrappedUserEmail
    }
    
    // WORK HERE
    //return "user@example.com"
    //println("Value...: \(unWrappedUserEmail)")
    
    //return unWrappedUserEmail // ???????? = Question - why wont' this return here instead of within each if section above
    
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions ***************************************************************************************************************************

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

for myTest in strings{
    println("Values...: \(myTest).")
    
}

// WORK HERE - make your function and pass `strings` in
    var myString:String = ""
    var n=0
func inputArrayOutputStrings(myInputArray:[String]) -> String {
    
    for myItem in myInputArray {
        println("Value..: \(myItem).")
        myString += myItem
        n++
        if n < myInputArray.count{
            myString += ";"
        }
        
    }
    return myString
}
    
let myOutput = inputArrayOutputStrings(strings) // I added this let statement to call the function
let expectedOutput = "milk;eggs;bread;challah"

/*

Closures ***************************************************************************************************************************

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

// using closure curly braces - why or how is his a Bool return?
let mySortedCerealArray = sorted(cerealArray, {(item1, item2) in
    
    return item1 < item2
})

// abbreviated Operator Overloading shorthand way to do it
let sortedCerealArray = sorted(cerealArray, <)







