// Playground - noun: a place where people can play

import UIKit

// Very typical array notation:
var teams = ["Heroes", "Monsters", "Seekers", "Villains", "Red", "Blue"]
var team1=teams[3]

// For..In looping:
for team in teams
{
    println(team)
}

// Traditional for loop:
for( var i=0 ; i<3 ; i++ )
{
    println(teams[i])
}

var i=0
while( i<4)
{
    println(teams[i++])
}