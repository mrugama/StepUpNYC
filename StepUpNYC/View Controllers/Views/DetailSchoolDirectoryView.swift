//
//  DetailSchoolDirectoryView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit

class DetailSchoolDirectoryView: UIView {

    var schoolImageView = DetailSchoolDirectoryImageView()
    var keyInfoView = DetailSchoolDirectoryKeyInfoView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(schoolImageView)
        schoolImageView.snp.makeConstraints { (make) in
            make.width.height.equalTo(snp.width).multipliedBy(0.75)
            make.top.equalTo(snp.top).offset(8)
            make.centerX.equalTo(snp.centerX)
        }
        
        addSubview(keyInfoView)
        keyInfoView.snp.makeConstraints { (make) in
            make.top.equalTo(schoolImageView.snp.bottom).offset(16)
            make.width.equalTo(snp.width)
            make.centerX.equalTo(snp.centerX)
            make.height.equalTo(snp.height).multipliedBy(0.30)
        }
    }
}
