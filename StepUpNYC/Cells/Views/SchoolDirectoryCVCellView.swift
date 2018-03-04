//
//  SchoolDirectoryTVCellView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class SchoolDirectoryCVCellView: UIView {
    lazy var schoolImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage.init(named: "Queens High School for Sciences at York College")
        return image
    }()
    
    lazy var nameSchoolLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(nameSchoolLabel)
        nameSchoolLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(snp.bottom)
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(snp.width)
        }
        
        addSubview(schoolImageView)
        schoolImageView.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top)
            make.width.equalTo(snp.width)
            make.centerX.equalTo(snp.centerX)
            make.bottom.equalTo(nameSchoolLabel.snp.top).offset(-8)
        }
        
    }
}
