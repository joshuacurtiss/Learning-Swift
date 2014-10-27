class Animal
{
    var name="no name"
    var age=0
    func getDetails() -> String
    {
        return "This animal's name is \(name), and it is \(age) years old."
    }
}

class Dog:Animal {
    func woof()->String{return "Woof, woof, woof!"}
}
class Cat:Animal {
    func meow()->String{return "Meow."}
}

var myPup=Dog()
myPup.name="Maddie"
myPup.age=9
myPup.woof()
myPup.getDetails()

var c=Cat()
c.name="Tatooine"
c.age=18
c.meow()
c.getDetails()
