//
//  AppDelegate.swift
//  A11yUITestSampleProject
//
//  Created by Oswaldo Rubio on 18.02.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
 
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow()
        window.rootViewController = ViewController()
        self.window = window
        self.window?.makeKeyAndVisible()
        return true
    }
}

