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
        
import UIKit
import FirebaseDatabase

struct QuestionService {
    private init() {
        dbRef = Database.database().reference()
        questionRef = dbRef.child("questions")
        answerRef = questionRef.child("answers")
    }
    static let manager = QuestionService()
    private let dbRef: DatabaseReference
    private let questionRef: DatabaseReference
    private let answerRef: DatabaseReference
    
    func getQuestion(completion: @escaping ([Question]) -> Void) {
        let ref = questionRef
        var questions = [Question]()
        ref.observe(.value) { (snapShots) in
            for value in snapShots.children {
                let newQ = Question(snapShot: value as! DataSnapshot)
                questions.append(newQ)
            }
            completion(questions)
        }
    }
    
    func saveQuestion(text: String, explanation: String, image: UIImage?, answers: [Answer]) {
        let ref = Database.database().reference().child("questions")
        let questionRef = ref.childByAutoId()
        let newQ = Question(text: text, explanation: explanation, imageURL: nil)
        questionRef.setValue(newQ.toAnyObject())
        let newA = ref.child(questionRef.ref.key).child("answers").childByAutoId()
        for answer in answers {
            newA.setValue(answer.toAnyObject())
        }
    }
}
