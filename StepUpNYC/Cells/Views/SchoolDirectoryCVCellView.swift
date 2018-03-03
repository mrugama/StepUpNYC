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
        return image
    }()
    
    lazy var nameSchoolLabel: UILabel = {
        let label = UILabel()
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
        addSubview(schoolImageView)
        // TODO: setup schoolImageView constraints
        
        addSubview(nameSchoolLabel)
        // TODO: setup nameSchoolLabel constraints
        
    }
}
