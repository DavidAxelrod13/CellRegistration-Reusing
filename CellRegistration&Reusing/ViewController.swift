//
//  ViewController.swift
//  CellRegistration&Reusing
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = .white
        collectionView?.register(DummyCollectionViewCell.self)
    
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: DummyCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
}

