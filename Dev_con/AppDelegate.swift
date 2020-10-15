//
//  AppDelegate.swift
//  Dev_con
//
//  Created by Eber Peña on 14/10/20.
//

import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {

  var window: UIWindow?
    
    var applicationController: TVApplicationController?
    
    var appController: TVApplicationController?
    static let TVBaseURL = "http://localhost:9000/"
    static let TVBootURL = "\(AppDelegate.TVBaseURL)/main.js"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // 1
          let appControllerContext = TVApplicationControllerContext()

          // 2
          guard let javaScriptURL = URL(string: AppDelegate.TVBootURL) else { fatalError("unable to create NSURL") }
          appControllerContext.javaScriptApplicationURL = javaScriptURL
          appControllerContext.launchOptions["BASEURL"] = AppDelegate.TVBaseURL

          // 3
          appController = TVApplicationController(context: appControllerContext, window: window, delegate: nil)
          return true
    }


    


}

