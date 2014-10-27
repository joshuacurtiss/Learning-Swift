// Playground - noun: a place where people can play

import UIKit

// Loose-typed var:
var title="Mr."

// Strong-typed vars:
var fname:String="Josh";
var lname:String="Curtiss";

// Old-school concatenation:
var fullname=title+" "+fname+" "+lname

// Fancy Swift inline concatenation:
var myGreeting="Hello, \(fullname)!"

let pi:Double=3.141592654
var multi=6

// Calculation inside the \(), and also typing for the math to work:
var output="Pi times \(multi) is \(pi*Double(multi))."

println( output )