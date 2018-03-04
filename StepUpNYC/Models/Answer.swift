//
//  Answer.swift
//  StepUpNYC
//
//  Created by MacBook on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct Answer: Codable {
    let questionId: String?
    let isCorrect: Bool?
    let text: String?
    
    // Data from Firebase
    init(snapShot: DataSnapshot) {
        let value = snapShot.value as? [String: Any]
        self.questionId = value?["text"] as? String ?? ""
        self.isCorrect = value?["isCorrect"] as? Bool ?? false
        self.text = value?["text"] as? String ?? ""
    }
    
    // convert into data model
    init(questionId: String?, isCorrect: Bool, text: String) {
        self.questionId = questionId
        self.isCorrect = isCorrect
        self.text = text
    }
    
    // convert into JSON format
    func toAnyObj() -> [String: Any] {
        return ["questionId": questionId ?? "",
                "isCorrect": isCorrect ?? false,
                "text": text ?? ""]
    }
}
