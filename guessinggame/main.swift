//
//  main.swift
//  guessinggame
//
//  Created by Thomas Dimeny on 1/23/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation

//var guess: Int
var example: UInt32
var tries = 1
var playAgain: Int
var playingGame: Bool = true
var playerName: String
print("Enter your name")
playerName = readLine()!
print(playerName)
while playingGame {
    
    print(" \(playerName), Between 1 and what number would you like to guess")
    var upperLimit = Int(readLine()!)!
    if  upperLimit == nil {
        print("Please enter a number")
        upperLimit = Int(readLine()!)!
    }
    let randomNumber = Int(arc4random_uniform(UInt32(upperLimit)))
    print("please guess a number between 1 and \(String(describing: upperLimit))")
    print(randomNumber)
    var guess = Int(readLine()!)
    if guess == nil {
        print("Please guess a number")
        guess = Int(readLine()!)!
    }
   
    while guess != randomNumber && tries <= 5 {
        
    
        if randomNumber > guess! {
            print("The number is higher")
        } else if randomNumber < guess! {
            print("The number is lower")
        }
        
        print("Guess again")
        guess! = Int(readLine()!)!
        
        tries += 1
        print("You have used \(tries) out of 6 tries")
    }
    
    tries = 1
    if randomNumber == guess {
        print("You won!")
    }
    print("would you like to play again \(playerName)? Enter 0 for no and 1 for yes")
    playAgain = Int(readLine()!)!
    if playAgain == 0 {
        playingGame = false
    }
}

if playingGame == false {
    print("Thanks fam")
}






//determine if it is wrong or right (loop until correct or out of turns)



//If correct ask if they want to play again

//If it isn't correct, terll them the correct answer and ask them to play again.

