import UIKit

class School {
    var pupils = [Pupil]()
    var principal: Principal
    let name: String
    init(name: String, principal: Principal) {
        self.name = name
        self.principal = Principal(name: "Linus", surname: "Torvalds", age: 45)

    }
}

class Person {
    var name: String
    var surname: String
    var age: Int
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

class Pupil: Person {
    var classNum = String()
    var subjects: (subject: String, mark: Int)
    init(subjects: (subject: String, mark: Int), classNum: String, name: String, surname: String, age: Int) {
        self.subjects = subjects
        self.classNum = classNum
        super.init(name: name, surname: surname, age: age)
    }
    func personalInfo() {
        print("\(name) \(surname) \(subjects.subject) \(subjects.mark)")
    }
}

class Principal: Person {

 

}



let principal = Principal(name: "Paul", surname: "Newman", age: 45)
let pupil1 = Pupil(subjects: ("math", 5), classNum: "12", name: "Max", surname: "Petrov", age: 14)
pupil1.subjects = (subject: "english", mark: 7)
let pupil2 = Pupil(subjects: ("math", 5), classNum: "12", name: "Johny", surname: "Malkovich", age: 15)
var school = School(name: "Midwich",principal: principal)
let principal1 = Principal(name: "Max", surname: "Tornow", age: 40)
print(school.principal.name)

school.pupils.append(pupil1)
school.pupils.append(pupil2)
pupil1.personalInfo()
print(school.principal.name)

print(principal.name)
