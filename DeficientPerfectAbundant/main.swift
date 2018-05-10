//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation
var n = 0
var remainderAddition = 0
// INPUT
while (true) {
    print("INPUT?")
    // Get the user input
    guard let rawInput = readLine() else {
        print("AGAIN")
        continue
    }
    
    guard let input = Int(rawInput) else {
        print("AGAIN")
        continue
    }
    if input < 1 || input > 32500 {
        print("AGAIN")
        continue
    }
    n = input
    break
}

// PROCESS
if n == 1 {
    print("Your number is deficient")
} else {

    for possibleFactor in 1...n-1 {
        if n % possibleFactor == 0 {
            remainderAddition += possibleFactor
        }
    }
    
    // OUTPUT
    if remainderAddition > n {
        print("Your number is abundant")
    } else if remainderAddition < n {
        print("Your number is deficient")
    } else if remainderAddition == n {
        print("You chose a perfect number")
    }
}
