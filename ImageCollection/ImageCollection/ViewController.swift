//
//  ViewController.swift
//  ImageCollection
//
//  Created by Pawel Bednorz on 04/03/16.
//  Copyright © 2016 Droids on Roids. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    private let cellIdentifier = "ImageCell"
    
    private var photosCollectionArray = [UIImage]()
    private var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        triggerImageFetch()
    }
    
    // MARK: Image download
    
    internal func loadImage() {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) {
            // The script used during the presentation comes from: https://github.com/quver/random-image-service
            guard let url = NSURL(string: "http://lorempixel.com/600/600/"),
                imageData = NSData(contentsOfURL: url),
                image = UIImage(data: imageData) else { return }
            
            dispatch_async(dispatch_get_main_queue(), { [unowned self] in
                self.photosCollectionArray.insert(image, atIndex: 0)
                let indexPaths = [NSIndexPath(forItem: 0, inSection: 0)]
                self.collectionView.insertItemsAtIndexPaths(indexPaths)
            })
        }
    }
    
    private func triggerImageFetch() {
        timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self,
            selector: "loadImage", userInfo: nil, repeats: true)
    }
    
}

// MARK: - UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
            return photosCollectionArray.count
    }
    
    func collectionView(collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            guard let imageCell = collectionView.dequeueReusableCellWithReuseIdentifier(
                cellIdentifier, forIndexPath: indexPath) as? ImageCollectionViewCell else {
                    return UICollectionViewCell()
            }
            
            imageCell.imageView?.image = photosCollectionArray[indexPath.item]
            
            return imageCell
    }
    
}
