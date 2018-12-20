//
//  PageCell.swift
//  AutoLayoutExample
//
//  Created by Rajat Kumar on 20/12/18.
//  Copyright © 2018 Rajat Kumar. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell{
    
    var page : Pages? {
        didSet{
            guard let unwrappedPage = page  else {return}
            
            profileImage.image = UIImage(named: unwrappedPage.image)
            
            let attributedText = NSMutableAttributedString(string: unwrappedPage.title, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)])
            
            attributedText.append(NSAttributedString(string: "\n\n \(unwrappedPage.body)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor : UIColor.gray]))
            
             descriptionText.attributedText = attributedText
             descriptionText.textAlignment = .center
           
        }
    }
    
    
  private var profileImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "image1"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
   private var descriptionText: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        
    
        
        //textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        autoLayout()
    }
    
    func autoLayout(){
        let topContainerView = UIView()
        addSubview(topContainerView)

        //Enabling Auto layout
        topContainerView.translatesAutoresizingMaskIntoConstraints = false

        topContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true




        topContainerView.addSubview(profileImage)
        profileImage.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        profileImage.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        profileImage.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true

        addSubview(descriptionText)

        //Auto Layout for description TextView

        descriptionText.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        descriptionText.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        descriptionText.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


//    func autoLayout(){
//
//        backgroundColor = UIColor.white
//        // autoLayout()
//
//        let topViewContainer = UIView()
//        topViewContainer.frame =  CGRect(x: 0, y: 0, width: frame.width, height: frame.height/2)
//
//        addSubview(topViewContainer)
//
//        //Image
//
//        let image = UIImageView(image: UIImage(named: "image1"))
//        image.translatesAutoresizingMaskIntoConstraints = false
//        image.contentMode = .scaleAspectFit
//
//        topViewContainer.addSubview(image)
//        image.centerXAnchor.constraint(equalTo: topViewContainer.centerXAnchor).isActive = true
//        image.centerYAnchor.constraint(equalTo: topViewContainer.centerYAnchor).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
//        image.heightAnchor.constraint(equalTo: topViewContainer.heightAnchor, multiplier: 0.5).isActive = true
//
//        //Description
//
//        let textView = UITextView()
//        textView.translatesAutoresizingMaskIntoConstraints = false
//
//        let attributedText = NSMutableAttributedString(string: "Hi I am making a private application to share Images amongst community", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)])
//
//        attributedText.append(NSAttributedString(string: "\n\n This is the description about the title written on the top. NSMutableAttributedStringRocks", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor : UIColor.gray]))
//
//        textView.attributedText = attributedText
//        textView.textAlignment = .center
//        textView.isEditable = false
//        textView.isScrollEnabled = false
//
//        addSubview(textView)
//
//        textView.topAnchor.constraint(equalTo: topViewContainer.bottomAnchor).isActive = true
//        textView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
//        textView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
//        textView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
//    }
//



//var profileImage: UIImageView = {
//    let image = UIImageView(image: UIImage(named: "image1"))
//    image.translatesAutoresizingMaskIntoConstraints = false
//    image.contentMode = .scaleAspectFit
//    return image
//}()
//
//
//var descriptionText: UITextView = {
//    let textView = UITextView()
//    textView.translatesAutoresizingMaskIntoConstraints = false
//
//    let attributedText = NSMutableAttributedString(string: "Hi I am making a private application to share Images amongst community", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)])
//
//    attributedText.append(NSAttributedString(string: "\n\n This is the description about the title written on the top. NSMutableAttributedStringRocks", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor : UIColor.gray]))
//
//    textView.attributedText = attributedText
//    textView.textAlignment = .center
//    textView.isEditable = false
//    textView.isScrollEnabled = false
//    return textView
//}()
