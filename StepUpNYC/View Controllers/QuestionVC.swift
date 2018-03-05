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
        //view.backgroundColor = Color.blue
        view.verticalGradientLayer(topColor: Color.white, bottomColor: Color.blue)
    }
    
    @objc private func saveQuestion() {
//        guard let questionOne = questionView.questionTextView.text else {
//            print("Question empty")
//            return
//        }
//        guard let explanation = questionView.explanationView.explanationTextView.text else {
//            print("Explanation empty")
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
//        let question = Question(text: questionOne, explanation: explanation, imageURL: nil)
//        let answer1 = Answer(questionId: nil, isCorrect: answerOne, text: <#T##String#>)
//        QuestionService.manager.saveQuestion(question, <#T##answers: [Answer]##[Answer]#>, <#T##image: UIImage?##UIImage?#>)
    }
    
    private func setupView() {
        view.addSubview(questionView)
        questionView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.safeAreaLayoutGuide.snp.edges)
        }
    }

}
