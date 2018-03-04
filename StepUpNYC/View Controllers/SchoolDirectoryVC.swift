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
        view.verticalGradientLayer(topColor: Color.white, bottomColor: Color.blue)
    }
    
    private func configVC() {
        navigationController?.navigationBar.barTintColor = Color.white
        navigationController?.navigationBar.tintColor = Color.white
        tabBarController?.tabBar.barTintColor = Color.red
        tabBarController?.tabBar.tintColor = Color.white
        let titleImage = UIImageView()
        titleImage.image = #imageLiteral(resourceName: "stepUpLogoSmall")
        navigationItem.titleView = titleImage
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
        
        let detailVC = SchoolDetailVC.storyboardInstance()
        detailVC.school = school
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
