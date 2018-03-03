//
//  SchoolDirectoryView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit

class SchoolDirectoryView: UIView {

    lazy var schoolCollectionView: UICollectionView = {
        let cv = UICollectionView()
        cv.register(SchoolDirectoryCVCell.self, forCellWithReuseIdentifier: "SchoolCell")
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        schoolCollectionView.delegate = self
        schoolCollectionView.dataSource = self
        self.backgroundColor = .blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(schoolCollectionView)
        schoolCollectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(snp.edges)
        }
        
    }
}


