/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself(){
    print("""
My name is Brett Berry.
I am a junior at bentonville west high school.
I like computer science and moutain biking.
""")
}
introduceMyself()
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall()->Void{
    let randomNum = Int.random(in: 0...4)
    switch(randomNum){
    case 0:
        print("Definetly")
    case 1:
        print("Definetly No")
    case 2:
        print("Maybe?")
    case 3:
        print("Ask Again")
    case 4:
        print("...")
    default:
        break
    }
}
//These aren't calling and idk why, at least not showing up on the sides sooo idk, I know I'm calling them correctly tho
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
