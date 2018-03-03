//
//  DetailSchoolDirectoryKeyInfoView.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import MapKit

class DetailSchoolDirectoryKeyInfoView: UIView {
    
    lazy var keyInfoLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var keyInfoDetailLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var locationLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var moreInfoButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    lazy var mapView: MKMapView = {
        let map = MKMapView()
        map.showsUserLocation = true
        map.mapType = .standard
        return map
    }()

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
        setupKeyInfoLabel()
        setupKeyInfoDetailLabel()
        setupLocationLabel()
        setupMoreInfoButton()
        setupMapView()
        
    }
    
    func setupKeyInfoLabel() {
        addSubview(keyInfoLabel)
        keyInfoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(8)
            make.left.equalTo(snp.left).offset(8)
        }
    }
    
    func setupKeyInfoDetailLabel() {
        addSubview(keyInfoDetailLabel)
        keyInfoDetailLabel.snp.makeConstraints { (make) in
            //how to do the top?
            make.bottom.equalTo(snp.bottom).offset(-8)
            make.left.equalTo(snp.left).offset(8)
        }
    }
    
    func setupLocationLabel() {
        addSubview(locationLabel)
        locationLabel.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(8)
            make.right.equalTo(snp.right).offset(56)
        }
    }
    
    func setupMoreInfoButton() {
        addSubview(moreInfoButton)
        moreInfoButton.snp.makeConstraints { (make) in
            make.size.equalTo(32)
            make.top.equalTo(snp.top).offset(8)
            make.right.equalTo(8)
        }
    }
    
    func setupMapView() { 
        addSubview(mapView)
        snp.makeConstraints { (make) in
            make.bottom.equalTo(snp.bottom).offset(-8)
            make.right.equalTo(snp.right).offset(8)
        }
    }
}
