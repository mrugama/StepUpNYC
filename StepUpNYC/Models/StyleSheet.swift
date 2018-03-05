//
//  Stylesheet.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

enum Color {
    static let green = UIColor(red:75/255, green:127/255, blue:82/255, alpha:1.0)
    static let white = UIColor(red:247/255, green:244/255, blue:243/255, alpha:1.0)
    static let blue = UIColor(red:33/255, green:145/255, blue:251/255, alpha:1.0)
    static let lightRed = UIColor(red:242/255, green:67/255, blue:51/255, alpha:1.0)
    static let red = UIColor(red:186/255, green:27/255, blue:29/255, alpha:1.0)
    static let orange = UIColor(red:0.98, green:0.53, blue:0.01, alpha:1.0)
    static let redTwo = UIColor(red:0.98, green:0.01, blue:0.01, alpha:1.0)
}

extension UIView {
    func verticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [topColor.cgColor,bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        self.layer.insertSublayer(gradient, at: 0)
    }
}


