//
//  DetailViewControllerThree.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
class DetailViewControllerThree:UIViewController {
    
    @IBOutlet weak var winningLabel: UILabel!
    @IBOutlet var buttonOutlets: [UIButton]!
    
   

    var passingInfo:Trivia!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels()
    }
    @IBAction func answers(_ sender: UIButton) {
        if passingInfo.type == "boolean" {
        switch sender.tag {
        case 0:
            if sender.titleLabel?.text == passingInfo.correct_answer.removingPercentEncoding {
           winningLabel.text = "You are correct!"
                view.backgroundColor = .green
               sender.isHighlighted = true
            
            buttonOutlets.forEach({$0.isEnabled = false})
            }else {
                winningLabel.text = "You are incorrect!"
                view.backgroundColor = .darkGray
                sender.isHighlighted = true
                
                buttonOutlets.forEach({$0.isEnabled = false})
            }
                case 1:
                if sender.titleLabel?.text == passingInfo.correct_answer.removingPercentEncoding {
                    winningLabel.text = "You are correct!"
                    view.backgroundColor = .green
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }else {
                    winningLabel.text = "You are incorrect!"
                    view.backgroundColor = .darkGray
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
            }
                    default:
                       winningLabel.text = "lol"
                        
                        buttonOutlets.forEach({$0.isEnabled = false})
                    
            }
        } else if passingInfo.type == "multiple" {
            switch sender.tag {
            case 0:
                if sender.titleLabel?.text == passingInfo.correct_answer.removingPercentEncoding {
                    winningLabel.text = "You are correct!"
                    view.backgroundColor = .green
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }else {
                    winningLabel.text = "You are incorrect!"
                    view.backgroundColor = .black
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }
            case 1:
                if sender.titleLabel?.text == passingInfo.correct_answer.removingPercentEncoding {
                    winningLabel.text = "You are correct!"
                    view.backgroundColor = .green
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }else {
                    winningLabel.text = "You are incorrect!"
                    view.backgroundColor = .black
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }
            case 2:
                if sender.titleLabel?.text == passingInfo.correct_answer.removingPercentEncoding {
                    winningLabel.text = "You are correct!"
                    view.backgroundColor = .green
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }else {
                    winningLabel.text = "You are incorrect!"
                    view.backgroundColor = .black
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }
            case 3:
                if sender.titleLabel?.text == passingInfo.correct_answer.removingPercentEncoding {
                    winningLabel.text = "You are correct!"
                    view.backgroundColor = .green
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                } else {
                    winningLabel.text = "You are incorrect!"
                    view.backgroundColor = .black
                    sender.isHighlighted = true
                    
                    buttonOutlets.forEach({$0.isEnabled = false})
                }
            default:
                sender.setTitle("lol", for: .normal)
                
            }
        }
        
    }
    func setUpLabels() {
        
        var scrambled = passingInfo.scrambleAnswers()
        winningLabel.text = ""
        winningLabel.backgroundColor = .white
        if  passingInfo.type == "boolean" {
buttonOutlets[0].setTitle(scrambled[0], for: .normal)
buttonOutlets[1].setTitle(scrambled[1], for: .normal)
buttonOutlets[2].isHidden = true
            buttonOutlets[2].isEnabled = false
            buttonOutlets[3].isHidden = true
            buttonOutlets[3].isEnabled = false
            
        } else if passingInfo.type == "multiple" {
            buttonOutlets[0].setTitle(scrambled[0], for: .normal)
            buttonOutlets[1].setTitle(scrambled[1], for: .normal)
            buttonOutlets[2].setTitle(scrambled[2], for: .normal)
            buttonOutlets[3].setTitle(scrambled[3], for: .normal)
        }
    

    



}
}
