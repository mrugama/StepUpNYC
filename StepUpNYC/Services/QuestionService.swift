//
//  QuestionService.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
import FirebaseDatabase

class QuestionService {
    private init(){
        self.dbRef = Database.database().reference()
        
    }
    
    static let manager = QuestionService()
    private var dbRef: DatabaseReference?
    
    func saveQuestion(question : Question) {
        
    }
}
