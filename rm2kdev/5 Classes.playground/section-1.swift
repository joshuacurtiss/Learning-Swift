class Animal
{
    var name="no name"
    var age=0
    
    func getDetails() -> String
    {
        return "This animal's name is \(name), and it is \(age) years old."
    }

}


var myAnimal=Animal()
myAnimal.name="Maddie"
myAnimal.age=9

myAnimal.getDetails()