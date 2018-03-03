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
    }
    
    private func setupView() {
        addSubview(schoolDirectoCVCellView)
        schoolDirectoCVCellView.snp.makeConstraints { (make) in
            make.edges.equalTo(snp.edges)
        }
    }
}
