//
//  PocFrameworkMain.swift
//  PocFramework
//
//  Created by Veena Ram on 6/28/22.
//

import Foundation
import AWSDK

public struct PocFrameworkMain {
    
    static let shared: PocFrameworkMain = .init()
    
    public func getDisplayText() -> String {
        return "Hello World"
    }
        
    public func onOpenUrl(url : URL) {
        let sourceApplication = url.user
        let handedBySDKController = AWController
                                    .clientInstance()
                                    .handleOpenURL(url, fromApplication: sourceApplication)
        print("Handed over to AWController: \(handedBySDKController)")
    }
}
