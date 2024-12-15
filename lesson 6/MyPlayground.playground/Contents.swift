import UIKit

// 1th


let arr1 = Array(1..<14)
let arr2 = Array(14...30)
let arr3 = arr1 + arr2
print(arr3)

// 2nd

func eachSqure(_ arr: [Int]) -> [Int] {
    return arr.map({$0 * $0})
}

let testArr = Array(1...14)
print(eachSqure(arr1))

// 3rd

func eachEven(_ arr: [Int]) -> [Int] {
    return arr.filter({$0 % 2 == 0})
}

print(eachEven(arr1))

// 4th .map


let strings = ["bearing", "pulley", "bushing", "gear", "chain", "sprocket"]
let charCount = strings.map { $0.count }


// reassembling dictionary
let currentSalaries = ["Sasha": 700, "Kolya": 500, "Vasy": 450]
let reisedSalaries = Dictionary(uniqueKeysWithValues:(currentSalaries.map{key, value in (key, value + 100)}))
print(reisedSalaries)


let arrNums = [1,2,3,4,5,6]
let strNums = arrNums.map({"Number " + String.init($0)})
print(strNums)


// 5th .filter

//played with case insensitivity a bit. why false?
let parts = ["motor","Gasket" ,"mufler", "Mudguard", "Antenna", "shaft"]
let filteredParts = parts.filter { $0.lowercased().hasPrefix("m") }
print(filteredParts)



let names = ["Sasha", "Maximum", "Ivan", "Kolya", "Boris", "Anya"]

let shortNames = names.filter {$0.count <= 4}
print(shortNames)

//6th .compactMap

let randomValues:[Any] = [1, "c", 2, "b", 3, "a", 1,"d"]
let filteredValues = randomValues.compactMap({ $0 as? Int})
print(filteredValues)

let numArr = [1,2,nil,4,5,6,nil,8]
let filteredArr = numArr.compactMap({ $0})


//7th .sort

let games: Dictionary = ["Final Fantasy X": 2001, "Fortnite": 2017, "Silent Hill 2 Remake": 2024, "The Last of Us": 2013, "Alien Isolation": 2014]
let sortedGames = games.sorted(by: {$0.value < $1.value})
print(sortedGames)


var names2 = ["Maksim", "Nikola", "Evgenic", "Vladimir", "Sasha", "Yuretz", "Alexandr"]
names2.sort()
print(names2)

//8th .sorted

var names3 = ["Maksim", "Nikola", "Evgenic", "Vladimir", "Sasha", "Yuretz", "Alexandr"]
names3.sorted()
print(names3)

var names4 = ["Maksim", "Nikola", "Evgenic", "Vladimir", "Sasha", "Yuretz", "Alexandr"]
let sortedNames = names4.sorted { $0 < $1 }
print(sortedNames)

