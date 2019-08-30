//
//  modelThree.swift
//  UnitTestingLab
//
//  Created by Phoenix McKnight on 8/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit
struct EndPointThree:Codable {
    let results:[Trivia]
    static func getData(from data:Data) throws -> [Trivia] {
        do {
            
            let trivia = try JSONDecoder().decode(EndPointThree.self, from: data)
            return trivia.results
        } catch {
            throw JSONEError.decodingError(error)
        }
        
    }
}

struct Trivia:Codable {
    let question:String
    let category:String
    let correct_answer:String
    let incorrect_answers:[String]
    let type:String
    
    func scrambleAnswers() -> [String] {
        var emptyArr:[String] = []
        emptyArr.append(correct_answer.removingPercentEncoding!)
        for answer in incorrect_answers {
            emptyArr.append(answer.removingPercentEncoding!)
        }
       return emptyArr.shuffled()
           


        }




}
