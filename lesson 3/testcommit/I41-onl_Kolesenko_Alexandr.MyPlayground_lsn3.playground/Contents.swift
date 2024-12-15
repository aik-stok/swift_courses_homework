import UIKit


// Написать переменные и константы всех базовых типов данных
var intVar = 11
var int8Var: Int8 = 10
var int16Var: Int16 = 2522
var int132Var: Int32 = 40000
var int64Var: Int64 = 555543335
var boolVar: Bool = false
var floatVar: Float = 10.0
var doubleVar: Double = 15.2
var strVar: String = "55"

let intConst: Int8 = 11
let int16Const: Int16 = -2522
let int132Const: Int32 = 40000
let int64Const: Int = -555543335
let boolConst: Bool = true
let floatConst: Float = 10.0
let doubleConst: Double = 12.0
let strConst: String = "Your number is "

// У чисел вывести их минимальные и максимальные значения, а у строки – количество символов.
let intMax :Int = Int.max
let intMin :Int = Int.min
let int32Max :Int32 = Int32.max
let int32Min :Int32 = Int32.min
let uintMax :UInt = UInt.max
let uintMin :UInt = UInt.min
let uint8Max :UInt8 = UInt8.max
let uint8Min :UInt8 = UInt8.min

print(intMax)
print(intMin)
print(int32Max)
print(int32Min)
print(uintMax)
print(uintMin)
print(uint8Max)
print(uint8Min)
print(strConst.count)

//Написать различные выражения с приведением типа

let subRslt = int132Const - Int32(intConst)
print(subRslt)
let addRslt = floatConst + Float(doubleConst)
print(addRslt)
let addRslt2 = Double(intVar) + doubleVar
print(addRslt2)
let divRslt = int16Var / Int16(intConst)
print(divRslt)
let remRslt = int64Var % Int64(intConst)
print(remRslt)

let strToInt = Int(strVar) ?? 0
let strToIntRslt = strToInt * intVar
print(strToIntRslt)

let strRslt = strConst + String(8)
print(strRslt)
let subRslt2 = int132Const - Int32(uint8Max)
print(subRslt2)

// Интерполяция строк
let a = 20
let b = 10
var sum = 0

sum = a - b
print("\(a) - \(b) = \(sum)")
sum = a + b
print("\(a) + \(b) = \(sum)")
sum = a * b
print("\(a) * \(b) = \(sum)")
sum = a / b
print("\(a) / \(b) = \(sum)")


//Ночь или день?
let date = NSDate()
let hour = Int(NSCalendar.current.dateComponents([.hour, .minute], from: date as Date).hour ?? 0)

print( hour > 6 ? "Ложиться рано, можно работать!" : "Ночь, пора ложиться")

//Является ли число четным
for i in [13, 2, 20, 21, 76] {
    if i % 2 == 0 {
        print("\(i) - Четное")
    } else {
        print("\(i) - Нечетное")
    }
}

// День недели
let day: Int = 5
switch day {
case 1...10:
    print("первая декада")
case 11...20:
    print("вторая декада")
case 21...31:
    print("третья декада")
default:
    break
}


// Проверка первой буквы

var word: String = "eeppe"
if word.first == "e" {
    print("Первая буква \(word.first!)")
}
else {
    print("Буква не найдена")
}

//Таблица умножения
var nums = 2...9

for i in nums {
    for j in nums {
        print("\(i) * \(j) = \(i * j)")
    }
}

// Adding some unnecessary comments
// Adding even more unnecessary comments
// I feel very enthusiastic about comments today
