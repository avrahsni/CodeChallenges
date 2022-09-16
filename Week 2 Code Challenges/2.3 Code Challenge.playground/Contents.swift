import UIKit

class Person {
    var name: String
    var age: Int
    var weight: Double
    var favoriteColor: String
    
    init(name: String, age: Int, weight: Double, favoriteColor: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}

class Student: Person {
    var currentClass: Int
    var grade: String
    var gpa: Double
    
    init(name: String, age: Int, weight: Double, favoriteColor: String, currentClass: Int, grade: String, gpa: Double) {
        self.currentClass = currentClass
        self.grade = grade
        self.gpa = gpa
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
    }
}
