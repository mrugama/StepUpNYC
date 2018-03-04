//
//  QuestionService.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import FirebaseDatabase

class QuestionService {
    private init(){
        self.dbRef = Database.database().reference()
        self.qRef = dbRef.child("questions")
        self.aRef = dbRef.child("answer")
    }
    
    static let manager = QuestionService()
    private var dbRef: DatabaseReference!
    private var qRef: DatabaseReference!
    private var aRef: DatabaseReference!
    

    func saveQuestion(_ question : Question,_ answer: Answer,_ image: UIImage?) {
        let newQuestion = qRef.childByAutoId()
        let newAnswer = aRef.childByAutoId()
        let question = Question(text: question.text!, explanation: question.explanation!, imageURL: "")
        let answer = Answer(questionId: newQuestion.ref.key, isCorrect: answer.isCorrect!, text: answer.text!)
        newQuestion.setValue(question.toAnyObj())
        newAnswer.setValue(answer.toAnyObj())
    }
    
    func getQuestion(completion: @escaping ([Question]) -> Void) {
        qRef.observe(.value) { (snapShot) in
            var questions = [Question]()
            for child in snapShot.children {
                let question = Question(snapShot: child as! DataSnapshot)
                questions.append(question)
            }
            completion(questions)
        }
    }
    
    func getAnswers(completion: @escaping ([Answer]) -> Void) {
        aRef.observe(.value) { (snapShot) in
            var answers = [Answer]()
            for child in snapShot.children {
                let answer = Answer(snapShot: child as! DataSnapshot)
                answers.append(answer)
            }
            completion(answers)
        }
    }
}
