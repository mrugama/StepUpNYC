//
//  QuestionView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class QuestionView: UIView {

    lazy var questionTextView: UITextView = {
        let tv = UITextView()
        
        return tv
    }()

    lazy var answerOneTextView: UITextView = {
        let tv = UITextView()
        return tv
    }()
    
    lazy var answerTwoTextView: UITextView = {
        let tv = UITextView()
        return tv
    }()
    
    lazy var answerThreeTextView: UITextView = {
        let tv = UITextView()
        return tv
    }()
    
    lazy var answerFourTextView: UITextView = {
        let tv = UITextView()
        return tv
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(questionTextView)
        questionTextView.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(8)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-8)
            make.height.equalTo(snp.height).multipliedBy(0.4)
        }
        
        addSubview(answerOneTextView)
        answerOneTextView.snp.makeConstraints { (make) in
            make.top.equalTo(questionTextView.snp.bottom).offset(32)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-8)
            make.height.equalTo(snp.height).multipliedBy(0.2)
        }
        
        
    }
}
