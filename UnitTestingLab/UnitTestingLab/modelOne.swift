//
//  modelOne.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit

class Joke: Codable {
    let setup:String
    let punchline:String
  
    enum JSONEError: Error {
        case decodingError(Error)
    }
    static func getData(from data:Data) throws -> [Joke] {
        do {
            
            let joke = try JSONDecoder().decode([Joke].self, from: data)
            return joke
        } catch {
            throw JSONEError.decodingError(error)
        }
        
    }
    static func testGetData(from data:Data)  -> [Joke] {
        do {
            
            let joke = try JSONDecoder().decode(Array<Joke>.self, from: data)
            return joke
        } catch let decodeError {
            fatalError("could not decode info \(decodeError)")
        }
        }
        
    
}

