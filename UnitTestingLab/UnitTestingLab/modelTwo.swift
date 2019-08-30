//
//  modelTwo.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
enum JSONEError: Error {
    case decodingError(Error)
}
struct StarWarsResults:Codable {
    let results:[StarWars]
    static func getData(from data:Data) throws -> [StarWars] {
        do {
            
            let starwars = try JSONDecoder().decode(StarWarsResults.self, from: data)
            return starwars.results
        } catch {
            throw JSONEError.decodingError(error)
        }
        
    }
    
}
struct StarWars: Codable {
    let title:String
    let opening_crawl:String
    static func testGetDataStarWars(from data:Data)  -> [StarWars] {
        do {
            
            let starWars = try JSONDecoder().decode(StarWars.self, from: data)
            return [starWars]
        } catch let decodeError {
            fatalError("could not decode info \(decodeError)")
        }
    }
   
    
}

