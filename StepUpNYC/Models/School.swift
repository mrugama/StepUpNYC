//
//  School.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

struct School: Codable {
    let school_name: String?
    let school_email: String?  //general info
    let overview_paragraph: String? //general info
    let phone_number: String?  //general info
    let advancedplacement_courses: String?
    let primary_address_line_1: String?
    let city: String?
    let borough: String?
    let neighborhood: String?
    let latitude: String?
    let longitude: String?
    let subway: String?
    let bus: String?
    let total_students: String?  //general info
    let website: String?  //general info
    let zip: String?
    let state_code: String?
    let bin: String?
    let interest1: String? //school focus
    let method1: String? // Requirements
    let prgdesc1: String? // Requirements
}
