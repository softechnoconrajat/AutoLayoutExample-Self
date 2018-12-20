//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by Rajat Kumar on 20/12/18.
//  Copyright © 2018 Rajat Kumar. All rights reserved.
//

extension UIColor{
    static var pinkColor1 = UIColor(displayP3Red: 233/255, green: 68/255, blue: 133/255, alpha: 1)
}


import UIKit

class ViewController: UIViewController {
    
    var profileImage: UIImageView = {
       let image = UIImageView(image: UIImage(named: "image1"))
       image.translatesAutoresizingMaskIntoConstraints = false
       image.contentMode = .scaleAspectFit
        return image
    }()
    
    var descriptionText: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        let attributedText = NSMutableAttributedString(string: "Hi I am making a private application to share Images amongst community", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)])
        
        attributedText.append(NSAttributedString(string: "\n\n This is the description about the title written on the top. NSMutableAttributedStringRocks", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor : UIColor.gray]))
        
        textView.attributedText = attributedText
        
//        textView.text = "Hi I am making a private application to share Images amongst community"
//        textView.font = UIFont.boldSystemFont(ofSize: 15)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("NEXT", for: .normal)
        button.setTitleColor(UIColor.pinkColor1, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()
    
    let prevButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("PREV", for: .normal)
        button.setTitleColor(UIColor.pinkColor1, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()
    
    let pageController: UIPageControl = {
       let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.currentPageIndicatorTintColor = UIColor.pinkColor1
        pc.pageIndicatorTintColor = UIColor.gray
        
        return pc
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(descriptionText)
        self.autoLayout()
        
        self.bottomControl()
    }
    
    
    func bottomControl(){
  
        let bottomStackController = UIStackView(arrangedSubviews: [prevButton, pageController, nextButton])
        
        bottomStackController.translatesAutoresizingMaskIntoConstraints = false
        
        bottomStackController.distribution = .fillEqually
       // bottomStackController.axis = .vertical
        
        view.addSubview(bottomStackController)
        
        NSLayoutConstraint.activate([
            
            //nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomStackController.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomStackController.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomStackController.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomStackController.widthAnchor.constraint(equalToConstant: 70)
            ])
        
        
    }
    
    
    
    func autoLayout(){
        
        let topContainerView = UIView()
        view.addSubview(topContainerView)

        //Enabling Auto layout
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
       
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topContainerView.addSubview(profileImage)
        
        
        
        
        profileImage.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        profileImage.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        profileImage.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        //Auto Layout for description TextView
        
        descriptionText.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        descriptionText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        descriptionText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    
    }
}

