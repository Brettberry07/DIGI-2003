/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer{
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if ram <= 0 || yearManufactured < 1970 || yearManufactured > 2020{
            return nil
        }
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let computer1: Computer? = Computer(ram: 16, yearManufactured: 2019);
let computer2: Computer? = Computer(ram: -5, yearManufactured: 1);

if let comp1 = computer1{
    print(comp1.ram);
    print(comp1.yearManufactured);
}

if let comp2 = computer2{
    print(comp2.ram);
    print(comp2.yearManufactured);
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */