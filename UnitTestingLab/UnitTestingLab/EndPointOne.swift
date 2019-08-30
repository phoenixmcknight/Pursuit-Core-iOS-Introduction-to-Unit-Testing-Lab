//
//  EndPointOne.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
class EndPointOne:UIViewController,UITableViewDataSource,UITableViewDelegate {
    var joke = [Joke]()
    
    @IBOutlet weak var tableViewEndPointOne: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return joke.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewEndPointOne.dequeueReusableCell(withIdentifier: "joke")
        cell?.textLabel?.text = joke[indexPath.row].setup
        return cell!
    }
    private func loadData() {
        guard let pathToJSONFile = Bundle.main.path(forResource: "endPointOne", ofType: "json") else {
            fatalError("couldn't find json file")
        }
        print(pathToJSONFile)
        let url = URL(fileURLWithPath: pathToJSONFile)
        do {
            let data = try Data(contentsOf: url)
            let randomFromJSON = try Joke.getData(from: data)
            joke = randomFromJSON
        } catch {
            print(error)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let storyBoard = storyboard?.instantiateViewController(withIdentifier: "DetailViewControllerOne") as? DetailViewControllerOne {
            storyBoard.passingInfo = joke[indexPath.row]
            navigationController?.pushViewController(storyBoard, animated: true)
        }
    }
    override func viewDidLoad() {
         super.viewDidLoad()
        setUp()
        loadData()
    }
    func setUp() {
        tableViewEndPointOne.dataSource = self
        tableViewEndPointOne.delegate = self
    }
}

