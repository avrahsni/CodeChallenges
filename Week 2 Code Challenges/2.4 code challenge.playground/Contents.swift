import UIKit

struct Person
{
    var name : String;
    var age : Int;
    let height : Double;
    var weight : Double;
    
    func greeting()
    {
        print("Hello, my name is \(name), and I am \(age) years old.")
    }
    
    mutating func birthday()
    {
        age += 1;
    }
}

var person = Person(name : "John Smith", age : 45, height : 5.8, weight : 156.3)

person.greeting();
person.birthday();
person.greeting();
