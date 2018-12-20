//
//  SwipingController.swift
//  AutoLayoutExample
//
//  Created by Rajat Kumar on 20/12/18.
//  Copyright © 2018 Rajat Kumar. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    
    var pages =  [Pages(image: "image1", title: "First Image", body: "Some Body1"), Pages(image: "image2", title: "Second Image", body: "Some Body2"), Pages(image: "image3", title: "ThirdImage", body: "SomeBody3"), Pages(image: "image4", title: "FourthImage", body: "SomeBody4")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cell")
       
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PageCell
        
         let page = pages[indexPath.row]
         cell.page = page
        
//        let imageName = page[indexPath.item]
//
//       cell.profileImage.image = UIImage(named: imageName.image)
//        cell.descriptionText.text = imageName.title
        
       // cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .yellow
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}
