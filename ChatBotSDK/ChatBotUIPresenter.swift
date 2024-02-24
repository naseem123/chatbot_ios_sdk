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
class ChatBotUIPresenter {
    // MARK: - Properties
    
    /// The ChatBotEngine instance.
    let engine: ChatBotEngine
    
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
                navController.pushViewController(flutterViewController, animated: true)
            } else {
                self.viewController.present(flutterViewController, animated: true, completion: nil)
            }
        }
    }
}
