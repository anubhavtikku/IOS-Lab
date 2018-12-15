import UIKit
/*:
 ## Exercise - Guard Statements

 Imagine you want to write a function to calculate the area of a rectangle. However, if you pass a negative number into the function, you don't want it to calculate a negative area. Create a function called `calculateArea` that takes two `Double` parameters, `x` and `y`, and returns an optional `Double`. Write a guard statement at the beginning of the function that verifies each of the parameters is greater than zero and returns `nil` if not. When the guard has succeeded, calculate the area by multiplying `x` and `y` together, then return the area. Call the function once with positive numbers and once with at least one negative number.
*/
func area(_ x:Double,_ y:Double)->Double?
{
    
    guard x>=0 && y>=0 else {
        return nil
    }
    
    return x*y
}

print(area(5,3)!)
print(area(-2,3))
/*:
 Create a function called `add` that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
 */

func add(x:Int?,y:Int?)->Int?
{
    
    guard  let a=x as?Int , let b=y as?Int  else {
        return nil
    }
    
    return a+b
}
print(add(x:2,y:3)!)
print(add(x:2,y:nil))
/*:
 When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`. 
 
 Write a function below the given code called `createUser` that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
 */
struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"

func createUser()->User?
{
    guard  let a=firstNameTextField.text as?String , let b=lastNameTextField.text as?String,let c=ageTextField.text  else {
        return nil
    }
    let u=User(firstName: a, lastName: b, age: c)
    return u
}

/*:
 Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties. 
 */
let v=createUser()
if let u=v as?User
{
    print(u.firstName,u.lastName,u.age)
}
//: page 1 of 2  |  [Next: App Exercise - Guard](@next)
