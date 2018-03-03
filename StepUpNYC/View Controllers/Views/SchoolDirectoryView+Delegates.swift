//
//  SchoolDirectoryView+Delegates.swift
//  StepUpNYC
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

extension SchoolDirectoryView: UICollectionViewDelegate {
    
}

extension SchoolDirectoryView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: count array
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // TODO: call the custom cell and inject data
        
        return UICollectionViewCell()
    }
}
