//
//  ViewController.swift
//  macthgame
//
//  Created by imac os on 12/11/19.
//  Copyright © 2019 imac os. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flipCount: UILabel!
    var flipCounts = 0
    @IBAction func touch(_ sender: UIButton) {
        flipCounts += 1
        flipCount.text = "Flip:\(flipCounts)"
        
        // flipCard(withEmoji: "😍", on: sender)
        flipCard(withEmoji: "😍", on: sender)
        
    }
    
    @IBAction func touch1(_ sender: UIButton) {
        flipCounts += 1
        flipCount.text = "flip:\(flipCounts)"
        flipCard(withEmoji: "🥰", on: sender)
    }
    func flipCard(withEmoji emoji:String,on button:UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
    }
}

