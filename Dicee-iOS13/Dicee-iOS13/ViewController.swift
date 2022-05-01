//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var score = 0
    var images = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        let a = Int.random(in: 0...5)
        let b = Int.random(in: 0...5)
        diceImageView1.image = images[a]
        diceImageView2.image = images[b]
        
        score = a + b + 2
        scoreLabel.text = "Score : \(score)"
    }
    
}

