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
    
    var flag = false;
    
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
            if let navController = self.viewController.navigationController {
                navController.delegate = self
                navController.pushViewController(flutterViewController, animated: true)
            } else {
                self.viewController.present(flutterViewController, animated: true, completion: nil)
            }
        }
    }
}


extension ChatBotUIPresenter: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        flag = !flag;
        if (flag == true){
            navigationController.setNavigationBarHidden(true, animated: animated)
        }
        else{
            navigationController.setNavigationBarHidden(false, animated: animated)
        }
        
    }
}
