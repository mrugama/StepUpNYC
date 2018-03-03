//
//  SchoolDirectoryTVCell.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class SchoolDirectoryCVCell: UICollectionViewCell {

    var schoolDirectoCVCellView = SchoolDirectoryCVCellView()
    
    func configCell(school: School) {
        setupView()
        schoolDirectoCVCellView.nameSchoolLabel.text = school.school_name
    }
    
    private func setupView() {
        addSubview(schoolDirectoCVCellView)
        // TODO: setup Constraints
        
    }

}
