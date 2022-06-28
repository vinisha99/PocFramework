//
//  AWSDKHelper.swift
//  PocFramework
//
//  Created by Veena Ram on 6/28/22.
//

import Foundation
import AWSDK

class AWSDKHelper : AWControllerDelegate {
    
    static let shared: AWSDKHelper = .init()
    //lazy private var controller = AWController.clientInstance()
        
    func startController() {
        let awcontroller = AWController.clientInstance()
        awcontroller.callbackScheme = "iosFrameworkSample"
        awcontroller.delegate = self
        awcontroller.start()
    }
    
    func controllerDidFinishInitialCheck(error: NSError?) {
        
        if error != nil {
            AWLogError("Initial Check Done Error: \(String(describing: error)))")
        return
        }
        AWLogError("SDK Initial Check Done!")
    }
    
    func application(_ application: UIApplication,
                     shouldAllowExtensionPointIdentifier extensionPointIdentifier: UIApplication.ExtensionPointIdentifier) -> Bool {
        return false;
    }
    
}


