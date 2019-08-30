//
//  EndPointThree.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
class EndPointThreeViewController:UIViewController {
    @IBOutlet weak var tableViewTrivia: UITableView!
    var trivia = [Trivia]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        setup()
        
    }
    private func loadData() {
        guard let pathToJSON = Bundle.main.path(forResource: "endPointThree", ofType: "json") else {fatalError("couldn't find JSON file")}
        print(pathToJSON)
        let url = URL(fileURLWithPath: pathToJSON)
        do {
            let data = try Data(contentsOf: url)
            let randomFromJason = try EndPointThree.getData(from: data)
            trivia = randomFromJason
        } catch {
            print(error)
        }
        
    }
    func setup() {
        tableViewTrivia.dataSource = self
        tableViewTrivia.delegate = self
    }
}
extension EndPointThreeViewController:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  trivia.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewTrivia.dequeueReusableCell(withIdentifier: "trivia")
        cell?.textLabel?.text = trivia[indexPath.row].question
        cell?.detailTextLabel?.text = trivia[indexPath.row].category
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let storyBoard = storyboard?.instantiateViewController(withIdentifier: "DetailViewControllerThree") as? DetailViewControllerThree {
            
           storyBoard.passingInfo = trivia[indexPath.row]
            
            navigationController?.pushViewController(storyBoard, animated: true)
        }
        
    }
    
}
