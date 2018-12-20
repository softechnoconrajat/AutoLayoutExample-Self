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
    
    
    
  
}

