//
//  SchoolDirectoryVC.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit

class SchoolDirectoryVC: UIViewController {

    var schoolDirectory = SchoolDirectoryView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(schoolDirectory)
        schoolDirectory.snp.makeConstraints { (make) in
            make.edges.equalTo(view.safeAreaLayoutGuide.snp.edges)
        }
    }
}
