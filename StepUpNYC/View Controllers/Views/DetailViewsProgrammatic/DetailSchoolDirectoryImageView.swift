//
//  DetailSchoolDirectoryImageView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit

class DetailSchoolDirectoryImageView: UIView {

    lazy var nameSchoolLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.numberOfLines = 0
        label.textColor = Color.white
        return label
    }()
    
    lazy var schoolImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage.init(named: "Bronx High School of Science")
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(schoolImageView)
        schoolImageView.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(5)
            make.left.equalTo(snp.left)
            make.right.equalTo(snp.right)
            make.centerX.equalTo(snp.centerX)
            //            make.top.equalTo(nameSchoolLabel.snp.bottom)
            //            make.bottom.equalTo(snp.bottom)
            //            make.width.equalTo(snp.width)
            //            make.centerX.equalTo(snp.centerX)
        }
        
        addSubview(nameSchoolLabel)
        nameSchoolLabel.snp.makeConstraints { (make) in
            make.top.equalTo(schoolImageView.snp.bottom).offset(5)
            make.width.equalTo(snp.width)
            make.height.equalTo(64)
//            make.top.equalTo(snp.top).offset(8)
//            make.width.equalTo(snp.width)
//            make.height.equalTo(64)
        }
        
    }
    
    
}
