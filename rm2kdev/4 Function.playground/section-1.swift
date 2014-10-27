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

getNames()