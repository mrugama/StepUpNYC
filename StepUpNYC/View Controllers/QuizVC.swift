//
//  QuizVC.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import Firebase
class QuizVC: UIViewController{
    var index = 0
    //var popUpView = PopUpView()
    
    var blurEffectView: UIVisualEffectView!

    let quizView = QuizView()


    var questions = [Question]() {
        didSet {
            question = questions[0]
            populateLabels()
        }
    }

    
    var question: Question?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.verticalGradientLayer(topColor: Color.white, bottomColor: Color.blue)
        questions = JSONParsingService.parseJSONFile(filename: "QuestionJSON", type: "json")
        quizView.answerOneButton.addTarget(self, action: #selector(answerSelected(_:)), for: .touchUpInside)
        quizView.answerTwoButton.addTarget(self, action: #selector(answerSelected(_:)), for: .touchUpInside)
        quizView.answerThreeButton.addTarget(self, action: #selector(answerSelected(_:)), for: .touchUpInside)
        quizView.answerFourButton.addTarget(self, action: #selector(answerSelected(_:)), for: .touchUpInside)
        view.isUserInteractionEnabled = true
        populateLabels()
        //quizGame()
        //view.addGestureRecognizer(<#T##gestureRecognizer: UIGestureRecognizer##UIGestureRecognizer#>)
        setupView()
    }
    @objc func dismissBlurEffect(_ sender: UITapGestureRecognizer) {
        sender.view?.removeFromSuperview()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        view.setNeedsLayout()
        populateLabels()
        
    
    }
    override func viewWillAppear(_ animated: Bool) {
        index = 0
        populateLabels()
    }
    override func viewWillDisappear(_ animated: Bool) {
        index = 0
        populateLabels()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        quizView.setCornerRadii()
    }
    func populateLabels() {
        quizView.questionTextView.text = question?.text
        quizView.answerOneButton.setTitle(question?.answers?[0].text, for: .normal)
        quizView.answerTwoButton.setTitle(question?.answers?[1].text, for: .normal)
        quizView.answerThreeButton.setTitle(question?.answers?[2].text, for: .normal)
        quizView.answerFourButton.setTitle(question?.answers?[3].text, for: .normal)
        quizView.explanationTextView.text = question?.explanation
    }
    @objc func answerSelected(_ sender: UIButton) {
        var buttons = [quizView.answerOneButton,quizView.answerTwoButton,quizView.answerThreeButton,quizView.answerFourButton]
        let userAnswer = sender.tag
        let correctA = checkAnswers()
        if userAnswer == correctA {
            disableButtons()
            sender.backgroundColor = .green
        } else {
            disableButtons()
            sender.backgroundColor = .red
            buttons[correctA].backgroundColor = .green
        }
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissView))
        blurEffectView.addGestureRecognizer(tapGesture)
        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.quizView.containerView.addSubview(blurEffectView)
        
        UIView.animate(withDuration: 0.8) {
            self.quizView.explanationTextView.alpha = 1.0
            self.quizView.explanationTextView.isHidden = false
//            self.quizView.explanationTextView.alpha = 1.0
//            //self.quizView.containerView.alpha = 0
//            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
//            let blurEffectView = UIVisualEffectView(effect: blurEffect)
//            blurEffectView.frame = self.view.bounds
//            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//            self.quizView.containerView.addSubview(blurEffectView)
//            //self.popUpView.isHidden = false
//            //self.popUpView.layer.opacity = 0.9
        }
    }
    
    @objc private func dismissView() {
        blurEffectView.removeFromSuperview()
        UIView.animate(withDuration: 0.8) {
            self.quizView.explanationTextView.alpha = 0
            self.quizView.explanationTextView.isHidden = true
        }
        nextIndex()
        question = questions[index]
        populateLabels()
        enableButtons()
    }
    private func nextIndex() {
        index += 1
    }
    private func enableButtons() {
        [quizView.answerOneButton,quizView.answerTwoButton,quizView.answerThreeButton,quizView.answerFourButton].forEach { (button) in
            button.isEnabled = true
        }
    }
    private func disableButtons() {
        [quizView.answerOneButton,quizView.answerTwoButton,quizView.answerThreeButton,quizView.answerFourButton].forEach { (button) in
            button.isEnabled = false
        }
    }
    
    private func checkAnswers() -> Int  {
        let correctIndex: Int = (question?.answers?.index(where: {$0.isCorrect!}))!
        return correctIndex
        
    }
    private func setupView() {
        view.addSubview(quizView)
        quizView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view.safeAreaLayoutGuide.snp.edges)
        }
        
//        view.addSubview(popUpView)
//        popUpView.snp.makeConstraints { (make) in
//            make.height.equalTo(view.snp.height).multipliedBy(0.33)
//            make.width.equalTo(view.snp.width).multipliedBy(0.80)
//            make.centerX.centerY.equalTo(view)
//        }
        
 
    }
    
    private func populateButtons() {
        
    }
}
