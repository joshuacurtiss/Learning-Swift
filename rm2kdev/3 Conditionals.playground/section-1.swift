// Playground - noun: a place where people can play

import UIKit

var fruit="Apple"
var myfruit="Banana"

// If/Else:
if( fruit==myfruit )
{
    println("Yup!")
}
else if( fruit=="Orange" )
{
    println("Oranges!")
}
else
{
    println("No condition was met.")
}

// Switch Case:
switch fruit {
    case "Apple":
        println("Apples!")
    case "Banana":
        println("Loving bananas.")
    default:
        println("No fruits matched.")
}

println("You must like \(fruit).")