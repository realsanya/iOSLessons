import UIKit

class SomeClass{
    var nameClass: String = "DefaultClassName"
    var age: Int
    var newProperty: Int?
    
    init(age: Int) {
        self.age = age
    }
    
   // func sayHello(){
     //   print("Hello! I'm \(self.nameClass)")
    //}
    
   // func sum(with x: Int, and y: Int) -> Int {
     //   return x + y
    //}
}

struct SomeStruct{
    var nameStruct: String = "DefaultStructName"
    //var newProperty: Int
}



let firstSomeClass = SomeClass(age: 1)
var firstSomeStruct = SomeStruct()
print("first: \(firstSomeClass.nameClass), \(firstSomeStruct.nameStruct)")
//firstSomeClass.sayHello()
//print(firstSomeClass.sum(with: 12, and: 12))

var secondSomeClass = SomeClass(age: 2)
secondSomeClass.nameClass = "SecondClassName"
var secondSomeStruct = SomeStruct()
secondSomeStruct.nameStruct = "SecondStructName"
//secondSomeClass = firstSomeClass
//secondSomeStruct = firstSomeStruct
//secondSomeClass.sayHello()
print("second: \(secondSomeClass.nameClass), \(secondSomeStruct.nameStruct)")
print("first: \(firstSomeClass.nameClass), \(firstSomeStruct.nameStruct)")

firstSomeStruct.nameStruct = "ChangeStructName"
secondSomeStruct = firstSomeStruct
print("ChangeStruct: \(secondSomeStruct.nameStruct)")

firstSomeClass.nameClass = "ChangeClassName"
secondSomeClass = firstSomeClass
print("ChangeClass: \(secondSomeClass.nameClass)")
