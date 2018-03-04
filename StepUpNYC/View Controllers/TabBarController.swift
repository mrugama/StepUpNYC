//
//  TabBarController.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let schoolDirNav = UINavigationController(rootViewController: SchoolDirectoryVC())
        let quizNav = UINavigationController(rootViewController: QuestionVC())
        let resourcesNav = UINavigationController(rootViewController: ResourcesVC())
        schoolDirNav.tabBarItem = UITabBarItem(title: "Directory", image: #imageLiteral(resourceName: "icoDirectory"), tag: 0)
        quizNav.tabBarItem = UITabBarItem(title: "Quiz", image: #imageLiteral(resourceName: "icoQuiz"), tag: 1)
        resourcesNav.tabBarItem = UITabBarItem(title: "Resources", image: #imageLiteral(resourceName: "icoInfo"), tag: 2)
        let tabList = [schoolDirNav, quizNav, resourcesNav]
        viewControllers = tabList
    }
}
