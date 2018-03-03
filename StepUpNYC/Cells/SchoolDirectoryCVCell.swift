//
//  SchoolDirectoryTVCell.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class SchoolDirectoryCVCell: UICollectionViewCell {

    var schoolDirectoryCVCellView = SchoolDirectoryCVCellView()
    
    func configCell(school: School) {
        setupView()
        schoolDirectoryCVCellView.nameSchoolLabel.text = school.school_name
    }
    
    private func setupView() {
        addSubview(schoolDirectoryCVCellView)
        // TODO: setup Constraints
        
    }

}
