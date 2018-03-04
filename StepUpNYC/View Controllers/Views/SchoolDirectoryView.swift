//
//  SchoolDirectoryView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit
import expanding_collection

protocol SchoolDirectoryViewDelegate: class {
    func didSelectSchool(_ view: SchoolDirectoryView, school: School)
}

class SchoolDirectoryView: UIView {
    
    weak var delegate: SchoolDirectoryViewDelegate?

    let cellSpacing: CGFloat = 20.0
    var schools = [School]() {
        didSet {
            DispatchQueue.main.async {
                self.schoolCollectionView.reloadData()
            }
        }
    }
    
    lazy var schoolCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        cv.register(SchoolDirectoryCVCell.self, forCellWithReuseIdentifier: "SchoolCell")
        cv.backgroundColor = Color.blue
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        schoolCollectionView.delegate = self
        schoolCollectionView.dataSource = self
        loadData()
    }
    
    private func loadData() {
        SchoolAPIClient.manager.getDOE(completionHandler: { (schools) in
            self.schools = schools
        }, errorHandler: {print($0)})
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


