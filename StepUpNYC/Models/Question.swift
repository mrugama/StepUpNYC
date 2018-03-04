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
    
    // get data from Online
    init(snapShot: DataSnapshot) {
        let value = snapShot.value as? [String: Any]
        self.text = value?["text"] as? String ?? ""
        self.explanation = value?["explanation"] as? String ?? ""
        self.imageURL = value?["imageURL"] as? String ?? ""
    }
    //save data from online
    init(text:String, explanation: String, imageURL: String?) {
        self.text = text
        self.explanation = explanation
        self.imageURL = imageURL
    }
    func toAnyObject() -> [String: Any] {
        return ["text": text ?? "" , "explanation": explanation ?? "", "imageURL": imageURL ?? ""]
    }
}
