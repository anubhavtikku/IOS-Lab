/*:
 ## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for i in 1...100
{
    print(i)
}


/*:
 Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var j=1

for i in alphabet
{
    print(j,i)
    j+=1
}
//print(alphabet.index(of: "A")?.encodedOffset)

/*:
 Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
 */
var dict:[String:String]=["Karnataka":"Banglore","Maharashtra":"Mumbai","UP":"Lucknow"]
for (i,j) in dict
{
    print("State is",i," and capital is ",j)
}
//: page 1 of 6  |  [Next: App Exercise - Movements](@next)
