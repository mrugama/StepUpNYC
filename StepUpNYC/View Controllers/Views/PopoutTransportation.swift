//
//  PopoutTransportation.swift
//  StepUpNYC
//
//  Created by C4Q on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class PopoutTransportation: UIView {

    lazy var transLabel: UILabel = {
        let label = UILabel()
        label.text = "Transportation"
        label.textAlignment = .center
        return label
    }()
    
    lazy var busLabel: UILabel = {
        let label = UILabel()
        label.text = "Bus:"
        label.textAlignment = .left
        return label
    }()
    
    lazy var busInfoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    lazy var trainLabel: UILabel = {
        let label = UILabel()
        label.text = "Train:"
        label.textAlignment = .left
        return label
    }()
    
    lazy var trainInfoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(transLabel)
        transLabel.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(8)
            make.centerX.equalTo(snp.centerX)
        }
        
        addSubview(busLabel)
        busLabel.snp.makeConstraints { (make) in
            make.top.equalTo(transLabel.snp.bottom).offset(64)
            make.left.equalTo(snp.left).offset(8)
        }
        
        addSubview(busInfoLabel)
        busInfoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(busLabel.snp.bottom).offset(32)
            make.left.equalTo(snp.left).offset(8)
            make.right.equalTo(snp.right).offset(-8)
        }
        
        addSubview(trainLabel)
        trainLabel.snp.makeConstraints { (make) in
            make.top.equalTo(busInfoLabel.snp.bottom).offset(32)
            make.left.equalTo(snp.left).offset(8)
        }
        
        addSubview(trainInfoLabel)
        
    }

}
