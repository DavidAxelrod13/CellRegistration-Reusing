//
//  DummyCollectionViewCell.swift
//  CellRegistration&Reusing
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DummyCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}


extension DummyCollectionViewCell: ReusableView { }
