//
//  QuestionVC.swift
//  StepUpNYC
//
//  Created by C4Q on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class QuestionVC: UIViewController {

    var questionView = QuestionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        configNav()
    }
    
    private func configNav() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveQuestion))
    }
    
    @objc private func saveQuestion() {
//        guard let questionOne = questionView.questionTextView.text else {
//            print("Question empty")
//            return
//        }
//        guard let answerOne = questionView.answerOneTextView.text else {
//            print("Answer one empty")
//            return
//        }
//        guard let answerTwo = questionView.answerTwoTextView.text else {
//            print("Answer one empty")
//            return
//        }
//        guard let answerThree = questionView.answerThreeTextView.text else {
//            print("Answer one empty")
//            return
//        }
//        guard let answerFour = questionView.answerFourTextView.text else {
//            print("Answer one empty")
//            return
//        }
//        let question = Question(text: questionOne, explanation: "", imageURL: nil)
//        QuestionService.manager.saveQuestion(<#T##question: Question##Question#>, <#T##answer: Answer##Answer#>, <#T##image: UIImage?##UIImage?#>)
//        let answer = Answer(questionId: nil, isCorrect: <#T##Bool#>, text: <#T##String#>)
    }
    
    private func setupView() {
        view.addSubview(questionView)
        questionView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.safeAreaLayoutGuide.snp.edges)
        }
    }

}
