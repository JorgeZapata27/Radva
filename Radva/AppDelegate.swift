//
//  AppDelegate.swift
//  Radva
//
//  Created by JJ Zapata on 12/2/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
//        window?.backgroundColor = .green
        window?.rootViewController = WelcomeViewController()
        
        // Override point for customization after application launch.
        return true
    }


}

