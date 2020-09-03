//
//  ViewController.swift
//  WarCard Game
//
//  Created by Gunjan  Paul on 03/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func dealTapped(_ sender: Any) {
//        randomize number
        let leftNumber  = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
//        compare number
        if leftNumber > rightNumber{
            // left win
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
        else if rightNumber > leftNumber {
            // right win
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
//            tie
        }
        
    }
}

