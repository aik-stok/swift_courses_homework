import UIKit

// 1 print person name or " Hello World"

func printHi(_ person: String = "" ) {
    guard person.isEmpty else {
        return print("Hello, \(person)!")
    }
    return print("Hello, World!")
}

printHi("Misha")

// 2 return sum of chars
func sumOfCharacters(_ string1: String,_ string2: String) -> Int {
    let sum1 = string1.count
    let sum2 = string2.count
    return sum1 + sum2
}
sumOfCharacters ("Misha", "Afanasij")

// 3 function that prints squre from input number
func squreFrom (_ number: Int) {
    return print("\(number * number)")
}
print(squreFrom(8))

//4 create functions that will add, deduct, multiply and division numbers

func add (_ num1: Int,_ num2: Int) -> Int {
    return num1 + num2
}
func deduct (_ num1: Int,_ num2: Int) -> Int {
    return num1 - num2
}
func multiply (_ num1: Int,_ num2: Int) -> Int {
    return num1 * num2
}
func divide (_ num1: Double,_ num2: Double) -> Double {
    return num1 / num2
}

print(add(5,3))
print(deduct(5,3))
print(multiply(5,3))
print(divide(5,3))

//5 function that calculates area of circle through radius

func areaOfCircle (_ radius: Double) -> Double {
    return 3.14 * radius * radius
}
print(areaOfCircle(3))

// 6 return day or night string

func timeOfDay ( isNight: Bool) -> String {
    isNight ? "It's night" : "It's day. Wayke up, sleepyhead!"
}

print(timeOfDay(isNight: false))


// 7 prime number function

func FindPrime(_ number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number <= 100 else { return false }
    
    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}

FindPrime(101)

// 8 function returns season of the year

func seasonOfYear(_ month: Int) -> String {
    
    switch month {
    case 12, 1, 2:
        return "Winter"
    case 3, 4, 5:
        return "Spring"
    case 6, 7, 8:
        return "Summer"
    case 9, 10, 11:
        return "Autumn"
    default:
        break
    }
    return "Input adequate number"
}
seasonOfYear(5)

// function returns factorial
func factorialValue(_ number: Int) {
    var result = 1
    
    if (number > 1) {
        for i in 1...number{
            result *= i
        }
    }
    return print("\(result)")
}
factorialValue(5)
