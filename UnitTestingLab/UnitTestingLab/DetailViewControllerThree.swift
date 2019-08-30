//
//  DetailViewControllerThree.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
class DetailViewControllerThree:UIViewController {
   
    
    
    @IBOutlet weak var correctAnswer: UILabel!
    var passingInfo:Trivia!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setUpLabels()
    }
    @IBAction func answers(_ sender: UIButton) {
        if sender.tag == 2 {
            sender.setTitle("gogo", for: .normal)
           let title = sender.title(for: .normal)
        }
    }
//    func setUpLabels() {
//
//        answerONe.text =  passingInfo.incorrect_answers[0]
//        answerThree.text = ""
//        answerTwo.text = ""
//        correctAnswer.text = passingInfo.correct_answer
//        if passingInfo.incorrect_answers.count == 3 {
//            answerTwo.text = passingInfo.incorrect_answers[1]
//            answerThree.text = passingInfo.incorrect_answers[2]
//
//        }
    
        }
    


