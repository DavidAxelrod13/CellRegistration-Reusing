//
//  ReusableView.swift
//  CellRegistration&Reusing
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableView: class {
    static var defaultReuseID: String { get }
}

extension ReusableView where Self: UIView {
    static var defaultReuseID: String {
        return String(describing: self)
    }
}

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView {
        register(T.self, forCellWithReuseIdentifier: T.defaultReuseID)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.defaultReuseID, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseID)")
        }
        
        return cell
    }
    
}
