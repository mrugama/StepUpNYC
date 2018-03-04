//
//  DetailSchoolDirectoryVC.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class DetailSchoolDirectoryVC: UIViewController {

    var detailSchoolDirectoryView = DetailSchoolDirectoryView()
    var school: School!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        loadData()
        view.backgroundColor = .white
    }
    
    private func loadData() {
        detailSchoolDirectoryView.schoolImageView.schoolImageView.image = UIImage.init(named: school.bin!)
        detailSchoolDirectoryView.schoolImageView.nameSchoolLabel.text = school.school_name
        detailSchoolDirectoryView.keyInfoView.keyInfoDetailLabel.text = "email: \(school.school_email ?? "") \nphone: \(school.phone_number ?? "") \nwebsite: \(school.website ?? "")"
    }
    
    private func setupView() {
        view.addSubview(detailSchoolDirectoryView)
        detailSchoolDirectoryView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.safeAreaLayoutGuide.snp.edges)
        }
    }

}
