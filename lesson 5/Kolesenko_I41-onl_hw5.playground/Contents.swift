// 1

enum YearPeriod: String {
    case summer = "Лето"
    case winter = "Зима"
    case spring = "Весна"
    case fall = "Осень"
    
    


    func getYearPeriodMethod(_ monthNum: Int) -> YearPeriod {
        switch monthNum {
        case 12,1,2:
            return .winter
        case 3...5:
            return .spring
        case 6...8:
            return .summer
        case 9...11:
            return .fall
        default:
            return self
        }
    }
    
}
let ypInstance: YearPeriod = .summer

print(ypInstance.getYearPeriodMethod(1))


// 2

func isNil(_ values: String?...) -> Int {
    var nilValues = 0
    var nonNilValues = [String]()
    for value in values {
        if value == nil {
            nilValues += 1
        } else {
            nonNilValues.append(value ?? "")
        }
    }
      print(nonNilValues.joined(separator: ","))
    return nilValues

}
isNil(nil,"Hello", "World", nil, "Swift", nil)

func isitNil(_ values: String?...) -> Int {
    print(values.count)
    return 1
}
isitNil(nil,"Hello", "World", nil, "Swift", nil)


let corthArray = [(1, "c"), (2, "b"), (3, "a")]

print(corthArray.sorted(by: { lhs, rhs in
    lhs.0 > rhs.0
}))

print(corthArray.sorted(by: { $0.0 < $1.0 }))
