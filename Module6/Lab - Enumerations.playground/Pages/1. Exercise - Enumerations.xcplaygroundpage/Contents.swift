/*:
## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit{
    case clubs, spades, hearts, diamonds
}

//:  Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
var cardInHand = Suit.hearts
print(cardInHand)

//:  Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
cardInHand = Suit.spades
print(cardInHand)

//:  Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
func getFortune(cardSuit: Suit) -> Void{
    switch(cardSuit){
    case .clubs: print("You will soon find what you seek");break;
    case .diamonds: print("Riches will soon come your way");break;
    case .hearts: print("You will soon find love");break;
    case .spades: print("Luck will soon guide you");break;
    }
}

getFortune(cardSuit: Suit.clubs)
getFortune(cardSuit: Suit.spades)
getFortune(cardSuit: Suit.diamonds)
getFortune(cardSuit: Suit.hearts)

//:  Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
enum Value: Int{
    case ace = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case jack = 10
    case queen = 11
    case kind = 12
}

struct Card{
    var suit: Suit
    var value: Value
}

//:  How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
let card1 = Card(suit: .spades, value: .ace)
let card2 = Card(suit: .diamonds, value: .three)

print("card one has a value of \(card1.value), and a suit of \(card1.suit)")
print("card two has a value of \(card2.value), and a suit of \(card2.suit)")

/*:
page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
 */
