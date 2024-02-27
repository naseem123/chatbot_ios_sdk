//
//  Channel.swift
//  Runner
//
//  Created by Shiv Mohan Singh on 19/08/23.
//

import Foundation
import Flutter
import UIKit


public class Channel: NSObject  {
    
    public func register(window: UIWindow?) {
        let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        
        let channel = FlutterMethodChannel(name: "com.ra.print.channel",
                                           binaryMessenger: controller.binaryMessenger)
        channel.setMethodCallHandler({
            [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
            // This method is invoked on the UI thread.
            guard call.method == "callNativeMethod" else {
                result(FlutterMethodNotImplemented)
                return
            }
            Channel.printPdf(result: result)
        })
    }
    
    
    
    
    static func printPdf(result: FlutterResult) {
       
    }
    
}

