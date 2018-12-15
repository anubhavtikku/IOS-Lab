/*:
 ## App Exercise - Printable Workouts

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 The `Workout` objects you have created so far in app exercises don't show a whole lot of useful information when printed to the console. They also aren't very easy to compare or sort. Throughout these exercises, you'll make the `Workout` class below adopt certain protocols that will solve these issues.
 */
class Workout:Codable {
    var distance: Double
    var time: Double
    var identifier: Int
    
    init(distance: Double, time: Double, identifier: Int) {
        self.distance = distance
        self.time = time
        self.identifier = identifier
    }
}

/*:
 Make the `Workout` class above conform to the `CustomStringConvertible` protocol so that printing an instance of `Workout` will provide useful information in the console. Create an instance of `Workout`, give it an identifier of 1, and print it to the console.
 */
extension Workout:CustomStringConvertible
{
    var description: String {
        return "Distance is \(distance), time is \(time) and identifier is \(identifier)"
    }
    
}

var w1=Workout(distance:30, time:50, identifier:1)
print(w1)
/*:
 Make the `Workout` class above conform to the `Equatable` protocol. Two `Workout` objects should be considered equal if they have the same identifier. Create another instance of `Workout`, giving it an identifier of 2, and print a boolean expression that evaluates to whether or not it is equal to the first `Workout` instance you created.
 */
extension Workout:Equatable
{
    static func == (lhs: Workout, rhs:Workout) -> Bool {
        return
            lhs.identifier == rhs.identifier
    }
    
}
var w2=Workout(distance:10, time:250, identifier:2)
print(w1==w2)

/*:
 Make the `Workout` class above conform to the `Comparable` protocol so that you can easily sort multiple instances of `Workout`. `Workout` objects should be sorted based on their identifier. 
 
 Create three more `Workout` objects, giving them identifiers of 3, 4, and 5, respectively. Then create an array called `workouts` of type `[Workout]` and assign it an array literal with all five `Workout` objects you have created. Place these objects in the array out of order. Then create another array called `sortedWorkouts` of type `[Workout]` that is the `workouts` array sorted by identifier. 
 */
var w3=Workout(distance:10, time:250, identifier:3)
var w4=Workout(distance:10, time:250, identifier:4)
var w5=Workout(distance:10, time:250, identifier:5)
extension Workout:Comparable
{
static func < (lhs:Workout, rhs:Workout) -> Bool {
    
    if lhs.identifier != rhs.identifier {
        return lhs.identifier < rhs.identifier
    }

    return true
    }

}

var workouts:[Workout]=[w3,w4,w2,w5,w1]
var sortedWorkouts:[Workout]=workouts.sorted(by:<)
for i in sortedWorkouts
{
print(i)
}
/*:
 Make `Workout` adopt the `Codable` protocol so you can easily encode `Workout` objects as data that can be stored between app launches. Use a `JSONEncoder` to encode one of your `Workout` instances. Then use the encoded data to initialize a `String`, and print it to the console.
 */
import Foundation

let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(w1),
    let jsonString = String(data: jsonData, encoding:.utf8)
{
    print(jsonString)
}


//: [Previous](@previous)  |  page 2 of 5  |  [Next: Exercise - Create a Protocol](@next)
