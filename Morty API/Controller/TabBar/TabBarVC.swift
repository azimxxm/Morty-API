//
//  TabBarVC.swift
//  Morty API
//
//  Created by Azimjon on 12/10/22.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initTabBar()
    }
    
    
//    MARK: - initTabBar func
    func initTabBar(){
        // This is my TabBar screens
        let homeVC = HomeVC()
        let favariteVC = FavoriteVC()
        
// MARK: - Set for TabBar UINavigationController
//        let navFavariteVC = UINavigationController(rootViewController: favariteVC)
        
        
// MARK: - TabBar style
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "homeSelect"))
        
        favariteVC.tabBarItem = UITabBarItem(title: "Favarite", image: UIImage(named: "heart"), selectedImage: UIImage(named: "heartSelect"))
        
        
        self.setViewControllers([homeVC, favariteVC], animated: true)
    }

    
}
