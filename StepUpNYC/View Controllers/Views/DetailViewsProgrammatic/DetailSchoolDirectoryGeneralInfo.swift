//
//  DetailSchoolDirectoryGeneralInfo.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class DetailSchoolDirectoryGeneralInfo: UIView {

    var school: School?
    
    lazy var infoTextView: UITextView = {
        let tv = UITextView()
        
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // TODO: continue fill out the textView
        infoTextView.text = "E-mail: \(school?.school_email ?? "No email") \n "
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        // implement textView constraints
    }

}
