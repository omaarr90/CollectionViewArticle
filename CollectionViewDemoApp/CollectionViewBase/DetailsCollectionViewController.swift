//
//  DetailsCollectionViewController.swift
//  CollectionViewDemoApp
//
//  Created by Omar Alshammari on 09/11/1439 AH.
//  Copyright © 1439 Omar Alshammari. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class DetailsCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var viewModels = [DetailsViewModel]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headerNameNib = UINib(nibName: "HeaderCollectionViewCell", bundle: Bundle.main)
        self.collectionView?.register(headerNameNib, forCellWithReuseIdentifier: "HeaderNameCollectionViewCell")
    }
    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModels.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let viewModel = self.viewModels[indexPath.item]
        
        switch viewModel.cellType {
        case .header:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: viewModel.reuseIdentifier(), for: indexPath) as! HeaderCollectionViewCell
            cell.headerLabel.text = viewModel.headerCellProperty?.title
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
            return cell
        }
    }
    
    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var height: CGFloat
        let viewItem = self.viewModels[indexPath.item]
        
        switch viewItem.cellType {
        case .header:
            height = 50
        case .details:
            height = 50
        case.button:
            height = 100
        case .empty:
            height = 20
        }
        
        let width = self.view.frame.size.width
        return CGSize(width: width, height: height)
    }    
}

extension DetailsCollectionViewController {
    func addHeaderNameWithTitle(title: String) {
        let headerCellProperty = HeaderCellProperty(title: title)
        let viewModel = DetailsViewModel(headerCellProperty: headerCellProperty)
        self.viewModels.append(viewModel)
    }
    
}
