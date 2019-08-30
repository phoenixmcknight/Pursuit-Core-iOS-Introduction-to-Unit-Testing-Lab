//
//  DetailViewControllerOne.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
class DetailViewControllerOne:UIViewController {
    @IBOutlet weak var punchLineLabel: UILabel!
    var passingInfo:Joke!
override func viewDidLoad() {
        super.viewDidLoad()
    setUpLabels()
    }
    func setUpLabels() {
        punchLineLabel.text = passingInfo.punchline
    }
}


