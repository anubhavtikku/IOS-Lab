/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human:CustomStringConvertible,Equatable,Comparable,Codable
{
    var name:String
    var age:Int
    
    var description: String {
        return "Name is \(name) and age is \(age)"
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
            return
                    lhs.name == rhs.name &&
                    lhs.age == rhs.age
        }
    
    static func < (lhs:Human, rhs:Human) -> Bool {
        if lhs.age != rhs.age {
            return lhs.age < rhs.age
        } else if lhs.name != rhs.name {
            return lhs.name < rhs.name
        }
    return true
    }
    
    init(n:String,a:Int) {
        name=n
        age=a
    }
    
}

var h1=Human(n:"Marx", a:22)
var h2=Human(n:"Marx", a:22)
/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(h1)
print(h2)
/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(h1 == h2)
print(h1 != h2)
/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
var h3=Human(n:"Bergkamp", a:28)
var h4=Human(n:"George", a:21)
var h5=Human(n:"Keane", a:23)
var people:[Human]=[h3,h4,h5]
var sortedPeople:[Human]=people.sorted(by:<)

for p in sortedPeople{
    print(p)
}

/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
 */
import Foundation
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(h3),
    let jsonString = String(data: jsonData, encoding:.utf8)
{
    print(jsonString)
}

//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
