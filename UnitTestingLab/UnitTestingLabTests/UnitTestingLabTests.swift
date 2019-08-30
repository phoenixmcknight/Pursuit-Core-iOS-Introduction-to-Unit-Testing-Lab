//
//  UnitTestingLabTests.swift
//  UnitTestingLabTests
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import XCTest
@testable import UnitTestingLab

class UnitTestingLabTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testLoadingMultipleJokes() {
    let data = loadDataJokes()
        let jokes = Joke.testGetData(from: data)
        XCTAssert(jokes.count > 0, "the array of jokes isn't being loaded")
    }

    func testJokeStrings()  {
  let data = loadDataJokes()
       let jokes = Joke.testGetData(from: data)
        XCTAssert(jokes[0].punchline != "" && jokes[0].punchline != nil,"the JSON data isn't loading" )
        }
        
        
    
        private func loadDataJokes() -> Data {
            guard let pathToJSONFile = Bundle.main.path(forResource: "endPointOne", ofType: "json") else {
                fatalError("couldn't find json file")
            }
            print(pathToJSONFile)
            let url = URL(fileURLWithPath: pathToJSONFile)
            do {
                let data = try Data(contentsOf: url)
                return data
            }catch let jsonError {
                fatalError("coulding get data from JSON: \(jsonError)")
            }
    }
            
    
       
    
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }

}

}

