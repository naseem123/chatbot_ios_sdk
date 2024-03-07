//
//  ChatBotUIPresenter.swift
//  ChatBotSDK
//
//  Created by Shiv Mohan Singh on 19/02/24.
//

import Foundation
import UIKit
import Flutter
import FlutterPluginRegistrant

/// Handles the presentation of the Flutter UI.
class ChatBotUIPresenter: NSObject {
    // MARK: - Properties
    
    /// The ChatBotEngine instance.
    let engine: ChatBotEngine
    var methodChannel: FlutterMethodChannel!
    var flagIsNavVisible = false;
    
    /// The view controller from which the Flutter UI will be presented.
    let viewController: UIViewController
    
    // MARK: - Initialization
    
    /// Initializes the `ChatBotUIPresenter` with the given engine and view controller.
    /// - Parameters:
    ///   - engine: The ChatBotEngine instance.
    ///   - vc: The view controller from which the Flutter UI will be presented.
    init(engine: ChatBotEngine, viewController: UIViewController) {
        self.engine = engine
        self.viewController = viewController
    }
    
    // MARK: - Methods
    
    /// Presents the Flutter UI from the specified view controller.
    func presentUI() {
        DispatchQueue.main.async {
            let flutterViewController = FlutterViewController(engine: self.engine.flutterEngine, nibName: nil, bundle: nil)
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                if let navController = self.viewController.navigationController {
                    self.flagIsNavVisible = navController.isNavigationBarHidden
                    navController.setNavigationBarHidden(true, animated: false)
                    navController.pushViewController(flutterViewController, animated: true)
                } else {
                    self.viewController.present(flutterViewController, animated: true, completion: nil)
                }
            }
            
            
            
            
            let channel = FlutterMethodChannel(name: "com.chatbot.channel",
                                               binaryMessenger: flutterViewController.binaryMessenger)
            channel.setMethodCallHandler({
                
                [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
                // This method is invoked on the UI thread.
                guard call.method == "callNativeMethod" else {
                    result(FlutterMethodNotImplemented)
                    return
                }
                //                Channel.printPdf(result: result)
                if let mySelf = self{
                    if let navController = mySelf.viewController.navigationController {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            navController.isNavigationBarHidden = mySelf.flagIsNavVisible
                        }
                        
                        navController.popViewController(animated: true);
                    } else {
                        mySelf.viewController.dismiss(animated: true)
                    }
                }
                
            })
        }
    }
}
