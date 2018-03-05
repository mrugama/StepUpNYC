//
//  QuizView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit
//class PopUpView: UIView {
//    lazy var explanationTextView: UITextView = {
//        let tv = UITextView()
//        tv.backgroundColor = .green
//        return tv
//    }()
//}
class QuizView: UIView {
    
    lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var questionTextView : UITextView = {
       var textView = UITextView()
       textView.text = "Whatever"
        textView.textAlignment = .center
        textView.isEditable = false
        textView.backgroundColor = .white
        textView.textColor = .black
        textView.layer.cornerRadius = 30
        return textView
    }()
    lazy var answerOneButton : UIButton = {
        var button = UIButton()
//        button.titleLabel?.text = "Blah1"
        button.setTitle("Blah1", for: .normal)
        button.titleLabel?.textAlignment = .left
        button.setTitleShadowColor(Color.red, for: UIControlState.normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.backgroundColor = Color.white
        button.tag = 0
        return button
    }()
    lazy var answerTwoButton : UIButton = {
        var button = UIButton()
        button.setTitle("Blah2", for: .normal)
        button.titleLabel?.textAlignment = .left
        button.setTitleShadowColor(Color.red, for: UIControlState.normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.backgroundColor = Color.white
        button.setTitleColor(.black, for: .normal)
        button.tag = 1
        return button
    }()
    lazy var answerThreeButton : UIButton = {
        var button = UIButton()
        button.setTitle("Blah3", for: .normal)
        button.setTitleShadowColor(Color.red, for: UIControlState.normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.backgroundColor = Color.white
        button.setTitleColor(.black, for: .normal)
        button.tag = 2
        return button
    }()
    lazy var answerFourButton : UIButton = {
        var button = UIButton()
        button.setTitle("Blah4", for: .normal)
        button.setTitleShadowColor(Color.red, for: UIControlState.normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.backgroundColor = Color.white
        button.setTitleColor(.black, for: .normal)
        button.tag = 3
        return button
    }()
    
    lazy var explanationTextView: UITextView = {
        let tv = UITextView()
        tv.backgroundColor = .green
        tv.alpha = 0 
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        backgroundColor = .clear
        setCornerRadii()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
//    override func layoutSubviews() {
//      answerOneButton.layer.cornerRadius = answerOneButton.frame.height / 2
//    }
    
    private func setupViews() {
        setupContainerView()
        setupQuestionTextView()
        setupAnswerOneButton()
        setupAnswerTwoButton()
        setupAnswerThreeButton()
        setupAnswerFourButton()
        setupPopupView()
        self.setNeedsLayout()
    }
    
    private func setupContainerView() {
        addSubview(containerView)
        containerView.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    func setCornerRadii() {

        [answerOneButton,answerTwoButton,answerThreeButton,answerFourButton].forEach { (button) in
            button.titleLabel?.font = button.titleLabel?.font.withSize(12)
            button.backgroundColor = .white
            button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            button.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
            button.layer.shadowOpacity = 1.0
            button.layer.shadowRadius = 0.0
            button.clipsToBounds = false
            button.layer.masksToBounds = false
            button.layer.cornerRadius = button.frame.height / 2
            
        }
    }
    
    func setupQuestionTextView() {
        containerView.addSubview(questionTextView)
        questionTextView.translatesAutoresizingMaskIntoConstraints = false
        questionTextView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        questionTextView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        questionTextView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.85).isActive = true
        questionTextView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
//        questionTextView.snp.makeConstraints { (make) in
//            make.top.equalTo(snp.top).offset(8)
//            make.left.equalTo(snp.left).offset(8)
//            make.right.equalTo(snp.right).offset(-8)
//            make.height.equalTo(200)
//        }
    }
    

    func setupAnswerOneButton() {
        containerView.addSubview(answerOneButton)
//        answerOneButton.translatesAutoresizingMaskIntoConstraints = false
//        answerOneButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
//        answerOneButton.topAnchor.constraint(equalTo: questionTextView.bottomAnchor, constant: 20).isActive = true
//        answerOneButton.widthAnchor.constraint(equalTo: questionTextView.widthAnchor).isActive = true
//        answerOneButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.075).isActive = true
        answerOneButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(questionTextView.snp.width)
            make.top.equalTo(questionTextView.snp.bottom).offset(20)
            make.height.equalTo(snp.height).multipliedBy(0.075)
        }
        answerOneButton.layer.cornerRadius = answerOneButton.frame.height / 2
    }
    
    func setupAnswerTwoButton() {
        containerView.addSubview(answerTwoButton)
        answerTwoButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(questionTextView.snp.width)
            make.top.equalTo(answerOneButton.snp.bottom).offset(20)
            make.height.equalTo(snp.height).multipliedBy(0.075)
        }
    }

    func setupAnswerThreeButton() {
        containerView.addSubview(answerThreeButton)
        answerThreeButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(questionTextView.snp.width)
            make.top.equalTo(answerTwoButton.snp.bottom).offset(20)
            make.height.equalTo(snp.height).multipliedBy(0.075)
        }
    }

    func setupAnswerFourButton() {
        containerView.addSubview(answerFourButton)
        answerFourButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(questionTextView.snp.width)
            make.top.equalTo(answerThreeButton.snp.bottom).offset(20)
            make.height.equalTo(snp.height).multipliedBy(0.075)
        }
    }
    
    func setupPopupView() {
        addSubview(explanationTextView)
        explanationTextView.snp.makeConstraints { (make) in
            make.height.equalTo(snp.height).multipliedBy(0.33)
            make.width.equalTo(snp.width).multipliedBy(0.80)
            make.centerX.centerY.equalTo(self)
        }
    }
}
