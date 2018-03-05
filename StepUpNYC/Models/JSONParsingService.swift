//
//  JSONParsingService.swift
//  StepUpNYC
//
//  Created by MacBook on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

class JSONParsingService {
    static func parseJSONFile(filename: String, type: String) -> [Question] {
        var questions = [Question]()
        if let pathname = Bundle.main.path(forResource: filename, ofType: type) {
            guard let jsonData = FileManager.default.contents(atPath: pathname) else { fatalError("file not found") }
            do {
                let decoder = JSONDecoder()
                questions = try decoder.decode([Question].self, from: jsonData)
            } catch {
                print("read json error: \(error)")
            }
        } else {
            print("not found in bundle")
        }
        
        return questions
    }
}

