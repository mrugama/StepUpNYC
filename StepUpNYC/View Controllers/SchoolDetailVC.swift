//
//  ViewController.swift
//  DetailViewTest
//
//  Created by C4Q on 3/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class SchoolDetailVC: UITableViewController {
    
    var school: School!
    var popoutTransportation = PopoutTransportation()
    
    
    //TODO: MARLON - Inject the school chosen
    
    @IBOutlet weak var schoolImageView: UIImageView!
    @IBOutlet weak var schoolNameLabel: UILabel!
    
    @IBOutlet weak var schoolInterestsLabel: UILabel!
    @IBOutlet weak var schoolLocationLabel: UILabel!
    @IBOutlet weak var schoolMapView: MKMapView!
    @IBOutlet weak var schoolAddressLabel: UILabel!
    @IBOutlet weak var transportationButton: UIButton!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var moreInfoTextView: UITextView!
    
    @IBOutlet weak var moreInfoLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadCellData()
        setUpMap(Double(school.longitude!)!,Double(school.latitude!)!)
        schoolMapView.isUserInteractionEnabled = false
        configVC()
        imageSetup()
        tableView.allowsSelection = false
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        addPopoutView()
        popoutTransportation.closeButton.addTarget(self, action: #selector(closePopout), for: .touchUpInside)
    }
    
    @objc private func closePopout() {
        print("Hey, hey")
        self.popoutTransportation.isHidden = true
        UIView.animate(withDuration: 0.4) {
            self.popoutTransportation.layer.opacity = 0.0
        }
    }
    
    private func addPopoutView() {
        view.addSubview(popoutTransportation)
        popoutTransportation.snp.makeConstraints { (make) in
            make.center.equalTo(view.snp.center)
            make.height.equalTo(view.snp.height).multipliedBy(0.3)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
        }
        popoutTransportation.isHidden = true
        popoutTransportation.layer.opacity = 0
    }
    
    private func configVC() {
        navigationController?.navigationBar.barTintColor = Color.white
        navigationController?.navigationBar.tintColor = Color.white
        tabBarController?.tabBar.barTintColor = Color.red
        tabBarController?.tabBar.tintColor = Color.white
        let titleImage = UIImageView()
        titleImage.image = #imageLiteral(resourceName: "stepUpLogoSmall")
        navigationItem.titleView = titleImage
        self.navigationController?.navigationBar.tintColor = UIColor.black
        //        navigationController?.navigationBar.isTranslucent = true
    }
    
    //This is what calls the storyboard
    public static func storyboardInstance() -> SchoolDetailVC {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier: "SchoolDetailVC") as! SchoolDetailVC
        return detailVC
    }
    
    private func loadCellData() {
        schoolImageView.image = UIImage.init(named: school.bin!)
        schoolNameLabel.text = school.school_name
        schoolInterestsLabel.text = "School Interest \(school.interest1 ?? "")"
        schoolLocationLabel.text = "Located at:"
        schoolAddressLabel.text = "\(school.primary_address_line_1 ?? ""),\(school.city ?? ""), \(school.state_code ?? ""),\(school.zip ?? "")"
        moreInfoLabel.text = school.overview_paragraph
        popoutTransportation.infoTexView.text = "Bus: \(school.bus ?? "")\n\n\nSubway: \(school.subway ?? "")"
    }
    
    private func imageSetup(){
        schoolImageView.contentMode = .scaleAspectFit
        //TODO: add a shadow??
    }
    
    private func setUpMap(_ long: Double,_ lat: Double) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(lat, long)
        annotation.title = "My Annotation"
        annotation.subtitle = "subtitle"

        DispatchQueue.main.async {
            //self.schoolMapView.addAnnotation(self.annotation)
            self.schoolMapView.addAnnotations([annotation])
            self.schoolMapView.showAnnotations([annotation], animated: true)
        }
    }
    
    @IBAction func segmentedTapped(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("general info pressed")
            moreInfoLabel.text = "\(school.overview_paragraph ?? "") \n \(school.total_students ?? "") \n Website: \(school.website ?? "") \n Phone #: \(school.phone_number ?? "") \n Email: \(school.school_email ?? "")"
            
        } else {
            print("requirements pressed")
            moreInfoLabel.text = "Entrance Method: \(school.method1 ?? "") \n Required: \(school.prgdesc1 ?? "")"
        }
    }
    
    @IBAction func transInfoButtonPressed() {
        popoutTransportation.isHidden = false
        UIView.animate(withDuration: 0.7) {
            self.popoutTransportation.layer.opacity = 0.8
        }
    }
    
}



