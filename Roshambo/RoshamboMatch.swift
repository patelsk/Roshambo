//
//  RoshamboMatch.swift
//  Roshambo
//
//  Created by Shyam Patel  on 6/8/19.
//  Copyright © 2019 Shyam Patel . All rights reserved.
//

import Foundation

// RoshamboMatch struct holds a complete Roshambo Match. 
struct RoshamboMatch
{
    var p1: RoshamboMove
    var p2: RoshamboMove
    var victoryString: String!
    
    init(_ player1: RoshamboMove, _ player2: RoshamboMove)
    {
        self.p1 = player1
        self.p2 = player2
    }
    
    var winner: RoshamboMove
    {
        get
        {
            return p1.advantage(p2) ? p1 : p2
        }
    }
    
    var loser: RoshamboMove
    {
        get
        {
            return p1.advantage(p2) ? p2 : p1
        }
    }
    
    var tie: Bool
    {
        get
        {
            return p1 == p2
        }
    }
    
}
