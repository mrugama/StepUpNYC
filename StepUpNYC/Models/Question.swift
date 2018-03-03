//
//  Question.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation




struct Question: Codable {
    let text: String?
    let answers: [Answer]?
    let explanation: String?
    let imageID: String?
}
