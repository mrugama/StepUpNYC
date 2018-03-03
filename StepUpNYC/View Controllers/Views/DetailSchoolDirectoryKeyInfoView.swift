//
//  DetailSchoolDirectoryKeyInfoView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class DetailSchoolDirectoryKeyInfoView: UIView {

    var transportationView = DetailSchoolDirectoryKeyInfoTransportationsView()
    // Implement: acceptLabel / acceptanceLabel / LocationLabel / mapKit / infoButton
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
    }
    
}
