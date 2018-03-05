//
//  PopoutTransportation.swift
//  StepUpNYC
//
//  Created by C4Q on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class PopoutTransportation: UIView {

    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
        button.backgroundColor = Color.blue
        button.layer.cornerRadius = 32
        return button
    }()
    
    lazy var transLabel: UILabel = {
        let label = UILabel()
        label.text = "Transportation"
        label.textAlignment = .center
        label.textColor = Color.white
        return label
    }()
    
    lazy var infoTexView: UITextView = {
        let tv = UITextView()
        tv.isEditable = false
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        self.backgroundColor = Color.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        closeButton.setNeedsLayout()
    }
    
    private func setupViews() {
        addSubview(closeButton)
        closeButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(snp.top)
            make.centerX.equalTo(snp.right)
            make.height.width.equalTo(64)
        }
        
        addSubview(transLabel)
        transLabel.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(8)
            make.centerX.equalTo(snp.centerX)
        }
        
        addSubview(infoTexView)
        infoTexView.snp.makeConstraints { (make) in
            make.top.equalTo(transLabel.snp.bottom).offset(16)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-8)
            make.bottom.equalTo(snp.bottom).offset(-8)
        }
        
    }
}
