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
        configVC()
        schoolDirectory.delegate = self
    }
    
    private func configVC() {
        navigationController?.navigationBar.barTintColor = Color.lightRed
        navigationController?.navigationBar.tintColor = Color.white
        tabBarController?.tabBar.barTintColor = Color.red
        tabBarController?.tabBar.tintColor = Color.white
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.textColor = Color.white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        //UIFont(name: "Arial", size: 32)
        
        titleLabel.text = "SHSAT 411"
        navigationItem.titleView = titleLabel
        navigationController?.navigationBar.isTranslucent = true
    }

    private func setupView() {
        view.addSubview(schoolDirectory)
        schoolDirectory.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view.safeAreaLayoutGuide.snp.edges)
        }
    }
}

extension SchoolDirectoryVC: SchoolDirectoryViewDelegate {
    func didSelectSchool(_ view: SchoolDirectoryView, school: School) {
        let detailVC = DetailSchoolDirectoryVC()
        detailVC.school = school
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
