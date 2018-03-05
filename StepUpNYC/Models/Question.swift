//
//  Question.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
import FirebaseDatabase



struct Question: Codable {
    let text: String?
    let explanation: String?
    let imageURL: String?
    let answers: [Answer]?
    // get data from Online
    //save ata from online
//    init(text:String, explanation: String, imageURL: String?) {
//        self.text = text
//        self.explanation = explanation
//        self.imageURL = imageURL
//    }
//    func toAnyObject() -> [String: Any] {
//        return ["text": text ?? "" , "explanation": explanation ?? "", "imageURL": imageURL ?? ""]
//    }
}
