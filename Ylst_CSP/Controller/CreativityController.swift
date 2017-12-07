//
//  CreativityController.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//
//MARK: Shows a bolded pulldown menu comment
import UIKit
//MARK: - Class type should inherit from UICollectionViewController
class CreativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow: CGFloat = 3
    
    private lazy var artSelection: [UIImage?] =
    {
        return [
            UIImage(named: "tree"),
            UIImage(named: "myArt"),
            UIImage(named: "tree"),
            UIImage(named: "myArt"),
            UIImage(named: "myArt"),
            UIImage(named: "myArt"),
            UIImage(named: "myArt"),
            UIImage(named: "myArt"),
            UIImage(named: "myArt"),
            UIImage(named: "myArt"),
            UIImage(named: "myArt")
        ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at: indexPaths)
                })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
            }
        }
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
