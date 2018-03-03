//
//  SchoolAPIClient.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
struct SchoolAPIClient {
    private init() {}
    static let manager = SchoolAPIClient()
    
    func getDOE(completionHandler: @escaping ([School]) -> Void,
                errorHandler: @escaping (Error) -> Void) {
        let urlStr = "https://data.cityofnewyork.us/resource/97mf-9njv.json"
        guard let url = URL(string: urlStr) else {return}
        let parseData = {(data: Data) in
            do {
                let onlineDOE = try? JSONDecoder().decode([School].self, from: data)
                if let result = onlineDOE {
                    print(result.count)
                    completionHandler(result)
                }
            }
        }
        NetworkHelper.manager.performDataTask(with: url, completionHandler: parseData, errorHandler: errorHandler)
    }
}
