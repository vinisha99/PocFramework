//
//  PocFrameworkApp.swift
//  PocFramework
//
//  Created by Veena Ram on 6/27/22.
//

import SwiftUI

@main
struct PocFrameworkApp : App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup() {
            ContentView()
                .onOpenURL{ url in
                    PocFrameworkMain.shared.onOpenUrl(url: url)
                }

        }
    }
    
}

class AppDelegate : UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        AWSDKHelper.shared.startController()
        return true
    }
    
}
