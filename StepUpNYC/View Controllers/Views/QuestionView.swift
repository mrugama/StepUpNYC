//
//  QuestionView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class QuestionView: UIView {
    
    var explanationView = ExplanationView()

    lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = Color.blue
        label.text = "Question"
        return label
    }()
    
    lazy var explationButton: UIButton = {
        let button = UIButton()
        button.setTitle("Explanation", for: .normal)
        button.setTitleColor(Color.blue, for: .normal)
        return button
    }()
    
    lazy var questionTextView: UITextView = {
        let tv = UITextView()
        tv.layer.borderColor = UIColor.gray.cgColor
        tv.font = UIFont.boldSystemFont(ofSize: 14)
        tv.layer.borderWidth = 1
        return tv
    }()
    
    lazy var answerOneLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = Color.white
        label.text = "Answer one:"
        return label
    }()

    lazy var answerOneTextView: UITextView = {
        let tv = UITextView()
        tv.layer.borderColor = UIColor.gray.cgColor
        tv.font = UIFont.italicSystemFont(ofSize: 12)
        tv.layer.borderWidth = 1
        return tv
    }()
    
    lazy var isOkSwitchOne: UISwitch = {
        let isCorrect = UISwitch()
        isCorrect.isOn = false
        return isCorrect
    }()
    
    lazy var answerTwoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = Color.white
        label.text = "Answer two:"
        return label
    }()
    
    lazy var answerTwoTextView: UITextView = {
        let tv = UITextView()
        tv.layer.borderColor = UIColor.gray.cgColor
        tv.font = UIFont.italicSystemFont(ofSize: 12)
        tv.layer.borderWidth = 1
        return tv
    }()
    
    lazy var isOkSwitchTwo: UISwitch = {
        let isCorrect = UISwitch()
        isCorrect.isOn = false
        return isCorrect
    }()
    
    lazy var answerThreeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = Color.white
        label.text = "Answer three:"
        return label
    }()
    
    lazy var answerThreeTextView: UITextView = {
        let tv = UITextView()
        tv.layer.borderColor = UIColor.gray.cgColor
        tv.font = UIFont.italicSystemFont(ofSize: 12)
        tv.layer.borderWidth = 1
        return tv
    }()
    
    lazy var isOkSwitchThree: UISwitch = {
        let isCorrect = UISwitch()
        isCorrect.isOn = false
        return isCorrect
    }()
    
    lazy var answerFourLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = Color.white
        label.text = "Answer four:"
        return label
    }()
    
    lazy var answerFourTextView: UITextView = {
        let tv = UITextView()
        tv.layer.borderColor = UIColor.gray.cgColor
        tv.font = UIFont.italicSystemFont(ofSize: 12)
        tv.layer.borderWidth = 1
        return tv
    }()
    
    lazy var isOkSwitchFour: UISwitch = {
        let isCorrect = UISwitch()
        isCorrect.isOn = false
        return isCorrect
    }()
    
    override func layoutSubviews() {
        questionTextView.setNeedsLayout()
        answerOneTextView.setNeedsLayout()
        answerTwoTextView.setNeedsLayout()
        answerFourTextView.setNeedsLayout()
        answerFourTextView.setNeedsLayout()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupExplanationView()
        explationButton.addTarget(self, action: #selector(displayExplanation), for: .touchUpInside)
        explanationView.saveButton.addTarget(self, action: #selector(saveExplanation), for: .touchUpInside)
    }
    
    @objc private func displayExplanation() {
        explanationView.isHidden = false
        UIView.animate(withDuration: 0.8) {
            self.explanationView.layer.opacity = 0.9
        }
    }
    
    @objc private func saveExplanation() {
        explanationView.isHidden = true
        UIView.animate(withDuration: 0.8) {
            self.explanationView.layer.opacity = 0.0
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupExplanationView() {
        addSubview(explanationView)
        explanationView.snp.makeConstraints { (make) in
            make.center.equalTo(snp.center)
            make.height.equalTo(snp.height).multipliedBy(0.5)
            make.width.equalTo(snp.width).multipliedBy(0.8)
        }
        explanationView.isHidden = true
        explanationView.layer.opacity = 0
    }
    
    private func setupView() {
        addSubview(explationButton)
        explationButton.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(8)
            make.right.equalTo(snp.right).offset(-8)
        }
        
        addSubview(questionLabel)
        questionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(8)
            make.centerX.equalTo(snp.centerX)
        }
        
        addSubview(questionTextView)
        questionTextView.snp.makeConstraints { (make) in
            make.top.equalTo(questionLabel.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-8)
            make.height.equalTo(snp.height).multipliedBy(0.2)
        }
        
        addSubview(answerOneLabel)
        answerOneLabel.snp.makeConstraints { (make) in
            make.top.equalTo(questionTextView.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
        }
        
        addSubview(answerOneTextView)
        answerOneTextView.snp.makeConstraints { (make) in
            make.top.equalTo(answerOneLabel.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-64)
            make.height.equalTo(snp.height).multipliedBy(0.1)
        }
        
        addSubview(isOkSwitchOne)
        isOkSwitchOne.snp.makeConstraints { (make) in
            make.right.equalTo(snp.right).offset(-8)
            make.centerY.equalTo(answerOneTextView.snp.centerY)
            make.height.width.equalTo(46)
        }
        
        addSubview(answerTwoLabel)
        answerTwoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(answerOneTextView.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
        }
        
        addSubview(answerTwoTextView)
        answerTwoTextView.snp.makeConstraints { (make) in
            make.top.equalTo(answerTwoLabel.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-64)
            make.height.equalTo(snp.height).multipliedBy(0.1)
        }
        
        addSubview(isOkSwitchTwo)
        isOkSwitchTwo.snp.makeConstraints { (make) in
            make.right.equalTo(snp.right).offset(-8)
            make.centerY.equalTo(answerTwoTextView.snp.centerY)
            make.height.width.equalTo(46)
        }
        
        addSubview(answerThreeLabel)
        answerThreeLabel.snp.makeConstraints { (make) in
            make.top.equalTo(answerTwoTextView.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
        }
        
        addSubview(answerThreeTextView)
        answerThreeTextView.snp.makeConstraints { (make) in
            make.top.equalTo(answerThreeLabel.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-64)
            make.height.equalTo(snp.height).multipliedBy(0.1)
        }
        
        addSubview(isOkSwitchThree)
        isOkSwitchThree.snp.makeConstraints { (make) in
            make.right.equalTo(snp.right).offset(-8)
            make.centerY.equalTo(answerThreeTextView.snp.centerY)
            make.height.width.equalTo(46)
        }
        
        addSubview(answerFourLabel)
        answerFourLabel.snp.makeConstraints { (make) in
            make.top.equalTo(answerThreeTextView.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
        }
        
        addSubview(answerFourTextView)
        answerFourTextView.snp.makeConstraints { (make) in
            make.top.equalTo(answerFourLabel.snp.bottom).offset(8)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-64)
            make.height.equalTo(snp.height).multipliedBy(0.1)
        }
        
        addSubview(isOkSwitchFour)
        isOkSwitchFour.snp.makeConstraints { (make) in
            make.right.equalTo(snp.right).offset(-8)
            make.centerY.equalTo(answerFourTextView.snp.centerY)
            make.height.width.equalTo(46)
        }
    }
}
