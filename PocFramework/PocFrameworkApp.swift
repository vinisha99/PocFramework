//
//  PocFrameworkApp.swift
//  PocFramework
//
//  Created by Veena Ram on 6/27/22.
//

import SwiftUI
import AWSDK

@main
struct PocFrameworkApp : App {
    
    var body: some Scene {
        WindowGroup() {
            ContentView()
        }
    }
    
}

public class PocFrameworkMain {
    
    public func getDisplayText() -> String {
        return "Hello World"
    }
        
    func onOpenUrl(url : URL) {
        let sourceApplication = url.user
        let handedBySDKController = AWController
                                    .clientInstance()
                                    .handleOpenURL(url, fromApplication: sourceApplication)
        print("Handed over to AWController: \(handedBySDKController)")
    }
    
}
