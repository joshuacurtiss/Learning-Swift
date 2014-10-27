// Playground - noun: a place where people can play

import UIKit

/*
    Interesting, like JavaScript, Swift will execute anything outside of
    functions as a global space. Also like ColdFusion.
*/



// Traditional function:
func add(num1:Int, num2:Int) -> Int
{
    return num1+num2
}

add(1, 4)

// Function with multiple return values:
func getNames() -> (String, String)
{
    return ("Name 1","Name 2")
}

// How to refer to the multiple returned values:
var stuff=getNames()
println(stuff.0)
println(stuff.1)

// Function returns multiple named values:
func getThing() -> (name:String, desc:String)
{
    return ("My name","My desc")
}

var thing=getThing()
println(thing.name)
println(thing.desc)
