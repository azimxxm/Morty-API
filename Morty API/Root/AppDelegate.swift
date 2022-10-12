//
//  AppDelegate.swift
//  Morty API
//
//  Created by Azimjon on 11/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let tabBarVC = TabBarVC(nibName: "TabBarVC", bundle: nil)
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
        return true
    }


}

