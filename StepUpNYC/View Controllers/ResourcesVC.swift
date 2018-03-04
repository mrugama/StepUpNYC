//
//  ResourcesVC.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import FAQView

class ResourcesVC: UIViewController {
    
    var faqView: FAQView!
    
    let items = [FAQItem(question: "Tip #1: Registration", answer: "Students who are interested in taking the SHSAT exam or auditioning at Fiorello H. LaGuardia High School of Music & Art and Performing Arts must speak with their school counselor to setup registration (generally early September to early October)."), FAQItem(question: "Tip #2: SHSAT or Audition?", answer: "The SHSAT is not necessary for those seeking admission to Fiorello H. LaGuardia High School of Music & Art and Performing Arts; it is mandatory for those seeking admission to the eight remaining specialized high schools."), FAQItem(question: "Tip #3: SHSAT Exam Date", answer: "The test usually takes place in mid-October. Students who register to take the SHSAT will be issued a Test Ticket. That ticket will list the exact date, time, and location."), FAQItem(question: "Tip #4: Resources From Khan's Tutorial", answer: "For those taking the SHSAT, the Khan's Tutorial website features a collection of test handbooks issued by the Department of Education. They are all available to download free of charge. http://bit.ly/2FcOhHO"), FAQItem(question: "Tip #5: Test Prep Camp", answer: "Hudson Guild runs an affordable SHSAT Preparation Summer Camp. http://bit.ly/1UquWCE"), FAQItem(question: "Tip #6: DREAM Program", answer: "Eligible students may be able to take part in the New York City Department of Education's DREAM program. http://on.nyc.gov/2H10dwL"), FAQItem(question: "Tip #7: Libraries", answer: "Check out public libraries throughout the five boroughs (New York Public Library, Brooklyn Public Library, and Queens Public Library); many of the branches have SHSAT prep books within their collections."), FAQItem(question: "Tip #8: SHSAT Scoring", answer: "For those taking the SHSAT, please understand how the exam is scored. The scores are calculated based on the number of correct answers marked on scored items. That means there will be no penalty issued for wrong answers If you are not certain about answer, you should still submit a guess."), FAQItem(question: "Tip #9: Turning in a Transcript", answer: "Admission to Fiorello H. LaGuardia High School of Music & Art and Performing Arts does not rest solely on the audition. Students vying for a spot must also submit a copy of the previous school year’s final report card and/or transcript. Admission to the other eight specialized high schools does not require the submission of a report card and/or transcript."), FAQItem(question: "Tip #10: Practice Makes Perfect", answer: "Regardless if you're preparing for the SHSAT exam or an audition, practice makes perfect. If you truly want admissions into one of these schools, invest the time to taking practice tests and rehearsing for your audition."), FAQItem(question: "Tip #11: The Big Day", answer: "Get a good night sleep the day before. Do not skip breakfast the morning of. Give yourself plenty of time to travel from your home to the exam site or to Fiorello H. LaGuardia High School for youf audition. Best of luck!")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tips and Resources"
        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .stop, target: nil, action: nil)
        navigationItem.leftBarButtonItem = rightBarButton
        faqView = FAQView(frame: view.frame, title: "Resources", items: items)
        view.addSubview(faqView)
        addFaqViewConstraints()
        
        //Initialize the FAQ cocoa pod
        faqView.translatesAutoresizingMaskIntoConstraints = false
        faqView.viewBackgroundColor = Color.white
        faqView.questionTextColor = UIColor.blue
        faqView.answerTextColor = Color.blue
        faqView.dataDetectorTypes = [.phoneNumber, .link]
    }
    
    func addFaqViewConstraints() {
        let faqViewTrailing = NSLayoutConstraint(item: faqView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailingMargin, multiplier: 1, constant: 17)
        let faqViewLeading = NSLayoutConstraint(item: faqView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1, constant: -17)
        let faqViewTop = NSLayoutConstraint(item: faqView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 50)
        let faqViewBottom = NSLayoutConstraint(item: self.view, attribute: .bottom, relatedBy: .equal, toItem: faqView, attribute: .bottom, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([faqViewTop, faqViewBottom, faqViewLeading, faqViewTrailing])
    }
    
}

