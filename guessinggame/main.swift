//
//  main.swift
//  guessinggame
//
//  Created by Thomas Dimeny on 1/23/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation

//Generate a random number

var guess: Int
var example: UInt32
var tries = 1
var playAgain: Int
var playingGame: Bool = true


while playingGame {
    print("Guess a number")
    guess = Int(readLine()!)!
    let randomNumber = Int(arc4random_uniform(100))
    print(randomNumber)
    
while guess != randomNumber && tries <= 5 {
    if randomNumber == guess {
        print("You won!")
    }
    else if randomNumber > guess {
        print("The number was higher")
    } else if randomNumber < guess {
        print("The number was lower")
    }
    print("Guess again")
    guess = Int(readLine()!)!
    tries += 1
}
    tries = 1
    print("would you like to play again? Enter 0 for no and 1 for yes")
    playAgain = Int(readLine()!)!
    if playAgain == 0 {
        playingGame = false
    }
}






//determine if it is wrong or right (loop until correct or out of turns)



//If correct ask if they want to play again

//If it isn't correct, terll them the correct answer and ask them to play again.

