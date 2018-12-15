/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var items:[Any]=[5,"Bill",6.7,true]
print(items)

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for i in items
{
    if(i is Bool)
    {
        print("The bool has value \(i)")
    }
    else if(i is Int)
    {
        print("The integer has value \(i)")
    }
    else if(i is String)
    {
        print("The string has value \(i)")
    }
    else if(i is Double)
    {
        print("The double has value \(i)")
    }
    
}
/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var airports:[String:Any]=["Ab":3.0,"Bc":true,"Cat":"Mat","That":2,"Whew":21]
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total:Double=0
for (i,j) in airports
{
    if let x=j as? Int
    {
        total+=Double(x)
    }
    
    else if let x=j as? Double
    {
        total+=Double(x)
    }
    
    else if let x=j as? Bool
    {
        if x==true
        { total+=2 }
        else
        {total-=3}
        
    }
    
    
    else if let x=j as? String
    {
        total+=1
    }
}

print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2:Double=0
for (i,j) in airports
{
    if let x=j as? Int
    {
        total2+=Double(x)
    }
        
    else if let x=j as? Double
    {
        total2+=Double(x)
    }
        
    
        
    else if let x=j as? String
    {
        if let y=Double(x)
        {
            total2+=y
        }
    }
}

print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
