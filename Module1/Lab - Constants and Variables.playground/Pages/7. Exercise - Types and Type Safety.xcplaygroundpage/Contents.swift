/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal = 0.5
var seconfDecimal = 0.25
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = true
//firstDecimal = trueOrFalse
print("This does not compile because firstDecimal is of type Double, while trueOrFalse is of type Boolean")
print("We are not able to assign a variable a type it is not to keep our code type safe")

//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var str = "Brett"
//str = firstDecimal
print("str is of type String, while firstDecimal is a Double, because they aren't of the same type,")
print("They cannot be assigned to one another")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var num = 16
//num = firstDecimal
print("This is because num is of type int, meaning it cannot have any sort of decimal value like Doubles can")

/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
