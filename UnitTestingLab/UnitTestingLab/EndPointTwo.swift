//
//  EndPointTwo.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
class EndPointTwo:UIViewController,UITableViewDelegate,UITableViewDataSource {
    var starWars = [StarWars]()
    @IBOutlet weak var tableViewStarWars: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return  starWars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewStarWars.dequeueReusableCell(withIdentifier: "movie")
        cell?.textLabel?.text = starWars[indexPath.row].title
        return cell!
    }
    private func loadData() {
        guard let pathToJSONFile = Bundle.main.path(forResource: "endPointTwo", ofType: "json") else {
            fatalError("couldn't find json file")
        }
        print(pathToJSONFile)
        let url = URL(fileURLWithPath: pathToJSONFile)
        do {
            let data = try Data(contentsOf: url)
            let randomFromJSON = try StarWarsResults.getData(from: data)
            starWars = randomFromJSON
        } catch {
            print(error)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let storyBoard = storyboard?.instantiateViewController(withIdentifier: "DetailViewControllerTwo") as? DetailViewControllerTwo {
            
            storyBoard.passingInfo = starWars[indexPath.row]
           
            navigationController?.pushViewController(storyBoard, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        setUp()
    }
    func setUp() {
        tableViewStarWars.dataSource = self
        tableViewStarWars.delegate = self
    }
}
