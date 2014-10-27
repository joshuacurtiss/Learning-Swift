class Animal
{
    var name="no name"
    var age=0
    
    init()
    {
    }
    
    init(name newname:String, age newage:Int)
    {
        name=newname
        age=newage
    }
    
    func getDetails() -> String
    {
        return "This animal's name is \(name), and it is \(age) years old."
    }

}

// Normal constructor:
var myAnimal=Animal()
myAnimal.name="Maddie"
myAnimal.age=9
myAnimal.getDetails()

// Using special constructor:
var otherAnimal=Animal(name:"Tatooine", age:15)
otherAnimal.getDetails()