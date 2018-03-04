//
//  SchoolDirectoryTVCell.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import expanding_collection

class SchoolDirectoryCVCell: BasePageCollectionCell {

    var schoolDirectoryCVCellView = SchoolDirectoryCVCellView()
    
    func configCell(school: School) {
        setupView()
        schoolDirectoryCVCellView.schoolImageView.image = UIImage.init(named: school.bin!)
        schoolDirectoryCVCellView.nameSchoolLabel.text = school.school_name
        schoolDirectoryCVCellView.layer.cornerRadius = 15
        schoolDirectoryCVCellView.backgroundColor = UIColor.white
    }
    
    override func layoutSubviews() {
        schoolDirectoryCVCellView.setNeedsLayout()
    }
    
    private func setupView() {

        addSubview(schoolDirectoryCVCellView)
        schoolDirectoryCVCellView.snp.makeConstraints { (make) in
            make.edges.equalTo(snp.edges)
        }
        
    }
}
