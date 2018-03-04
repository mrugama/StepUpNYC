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
    


    override func viewDidLoad() {
        super.viewDidLoad()
        loadCellData()
        setUpMap(Double(school.longitude!)!,Double(school.latitude!)!)
        schoolMapView.isUserInteractionEnabled = false
        configVC()
        tableView.allowsSelection = false
        tableView.separatorStyle = .none
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
        //schoolInterestLabel.text = school.
        //schoolLocationLabel.text =
        //schoolAddressLabel.text =
        //moreInfoTextView.text =
        
    }
    
    private func setUpMap(_ long: Double,_ lat: Double) {
    //userinteraction = .isdisabled
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(long,lat)
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
        } else {
            print("requirements pressed")
        }
    }
    
}



