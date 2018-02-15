//
//  AppDelegate.swift
//  summerder
//
//  Created by Satoshi Komatsu on 2017/07/04.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit
import NCMB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        NCMB.setApplicationKey("9a4d34fd5424fb1617111ef75ccdd27c4fb402147e73da1d08298bfe056c520f", clientKey: "a3e2896c2ab3ef3db9b51db57a6d1fa4c281a53d4b2da92ffbba7cb6fc760532")
        
        let display: CGRect = UIScreen.main.bounds
        // 取得ディスプレイに対応したStoryBoardをrootViewController(最初に表示されるもの)にする。
        if display.size.height == 568 {
            // iPhone 4S の場合 (Unit is Point.)
            let storyboard = UIStoryboard(name: "Sub", bundle: nil)
            let rootViewController: UIViewController? = storyboard.instantiateInitialViewController()
            window?.rootViewController = rootViewController
        }
        else if display.size.height == 667 {
            // iPhone 6 の場合
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let rootViewController: UIViewController? = storyboard.instantiateInitialViewController()
            window?.rootViewController = rootViewController
        }
        else if display.size.height == 736 {
            // iPhone 6 Plus の場合
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let rootViewController: UIViewController? = storyboard.instantiateInitialViewController()
            window?.rootViewController = rootViewController
        }
        
        return true
        
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}
