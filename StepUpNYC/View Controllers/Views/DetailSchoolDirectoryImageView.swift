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
        //implement image constraints
        addSubview(schoolImageView)
        schoolImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(snp.edges)
        }
    }
    
    
}
