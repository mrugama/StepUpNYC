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
    let isCorrect: Bool?
    let text: String?
    
    init(snapShot: DataSnapshot) {
        let value = snapShot.value as? [String: Any]
        self.isCorrect = value?["isCorrect"] as? Bool ?? false
        self.text = value?["text"] as? String ?? ""
    }
    init(isCorrect: Bool, text: String) {
        self.text = text
        self.isCorrect = isCorrect
    }
    func toAnyObject() -> [String: Any] {
        return ["isCorrect": isCorrect ?? false, "text": text ?? ""]
    }
}
