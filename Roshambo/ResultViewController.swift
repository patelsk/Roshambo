//
//  ResultsView.swift
//  Roshambo
//
//  Created by Shyam Patel  on 6/7/19.
//  Copyright © 2019 Shyam Patel . All rights reserved.
//

import UIKit

class ResultViewController: UIViewController
{
    var game: RoshamboMatch!
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.resultImage.image = processResultImage(game)
        self.resultLabel.text = processResultLabel(game)
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5)
        {
            self.resultImage.alpha = 1
        }
    }
    
    func processResultImage(_ game: RoshamboMatch) -> UIImage
    {
        var result = ""
        
        if game.tie
        {
            result = "tie"
            return UIImage(named: result)!
        }
        
        switch game.winner
        {
        case .rock:
            result = "rock>scissors"
        case .paper:
            result = "paper>rock"
        case .scissors:
            result = "scissors>paper"
        }
        
        return UIImage(named: result)!
    }
    
    func processResultLabel(_ game: RoshamboMatch) -> String
    {
        var result = ""
        
        if game.tie
        {
            result = "It is a Tie!"
            return result
        }
        
        switch game.winner
        {
        case .rock:
            result = "Rock Crushes Scissors"
        case .paper:
            result = "Paper Covers Rock"
        case .scissors:
            result = "Scissors Cuts Paper"
        }
    
        return result
    }
    
    @IBAction func playAgain(_ sender: UIButton)
    {
        dismiss(animated: true)
    }
}
