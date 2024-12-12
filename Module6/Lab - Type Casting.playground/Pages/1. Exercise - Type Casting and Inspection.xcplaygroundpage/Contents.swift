/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = [5,"5",10,true,false,"10",5.5,0.56];
print(collection);
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in collection{
    if item is Int{
        print("The integer has a value of \(item)");
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let dict: [String: Any] = ["double":3.1,"string":"a string","int":2,"bool":true,"stringNum":"20.0","secondBoo":false];
print(dict);

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0;
for (key,value) in dict{
    if let val = value as? Double{
        total+=val
    }
    else if let val = value as? Int{
        total+=Double(val);
    }
    else if let val = value as? Bool{
        if val{
            total += 2
        }
        else{
            total -= 3
        }
    }
    else if value is String{
        total += 1
    }
}
print(total);

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (key,value) in dict{
    if let val = value as? Double{
        total2 += val;
    }
    else if let val = value as? String, let doubVal = Double(val){
        total2 += doubVal
    }
    else if let val = value as? Int{
        total2 += Double(value as! Int);
    }
}
print(total2);

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
