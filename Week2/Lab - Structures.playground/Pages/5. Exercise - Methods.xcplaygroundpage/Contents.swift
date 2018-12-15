/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func pri()
    {
        print("The title is \(title),author is \(self.author),price is \(self.price) and pages are \(pages) ")
       
    }
}
let b=Book(title:"Autobiography", author:"Lee Ioacca", pages:400, price:200)
b.pri()
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int

mutating func like()
{
    likes=likes+1
    }
}

var p1=Post(message:"Hello World", likes:200, numberOfComments:30)
print(p1.likes)
p1.like()
print(p1.likes)
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
