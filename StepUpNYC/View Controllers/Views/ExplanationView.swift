//
//  ExplanationView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class ExplanationView: UIView {

    lazy var explanationLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = Color.lightRed
        label.text = "Explanation"
        return label
    }()
    
    lazy var explanationTextView: UITextView = {
        let tv = UITextView()
        tv.layer.borderColor = UIColor.gray.cgColor
        tv.font = UIFont.boldSystemFont(ofSize: 14)
        tv.layer.borderWidth = 1
        return tv
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        self.backgroundColor = Color.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(saveButton)
        saveButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(snp.bottom).offset(-8)
            make.width.equalTo(snp.width)
            make.centerX.equalTo(snp.centerX)
        }
        
        addSubview(explanationLabel)
        explanationLabel.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(8)
            make.centerX.equalTo(snp.centerX)
        }
        
        addSubview(explanationTextView)
        explanationTextView.snp.makeConstraints { (make) in
            make.top.equalTo(explanationLabel.snp.bottom).offset(8)
            make.left.equalTo(snp.left)
            make.right.equalTo(snp.right)
            make.bottom.equalTo(saveButton.snp.top).offset(-8)
        }
    }

}
