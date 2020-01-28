//
//  RoshamboMove.swift
//  Roshambo
//
//  Created by Shyam Patel  on 6/8/19.
//  Copyright © 2019 Shyam Patel . All rights reserved.
//

import Foundation

enum RoshamboMove
{
    case rock, paper, scissors
    
    init()
    {
        let rand = arc4random() % 3
        
        switch rand
        {
        case 0:
            self = .rock
        case 1:
            self = .paper
        default:
            self = .scissors
        }
    }
    
    func advantage(_ opponent: RoshamboMove) -> Bool
    {
        switch (self, opponent)
        {
        case (.rock, .scissors), (.scissors, .paper), (.paper, .rock):
            return true
        default:
            return false
        }
    }
    
    func stringName() -> String
    {
        switch self
        {
        case .rock:
            return "rock"
        case .paper:
            return "paper"
        case .scissors:
            return "scissors"
        }
    }
}
