//
//  DetailViewControllerTwo.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
class DetailViewControllerTwo:UIViewController,UITextViewDelegate {
    @IBOutlet weak var starWarsText: UITextView!
    
    var passingInfo:StarWars!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starWarsText.delegate = self
        setUpLabel()
       
    
    }
    func setUpLabel() {
        starWarsText.text = passingInfo.opening_crawl
        starWarsText.backgroundColor = .black
    }
}

