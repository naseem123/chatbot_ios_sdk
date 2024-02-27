//
//  ChatBot.swift
//  ChatBotSDK
//
//  Created by Shiv Mohan Singh on 19/02/24.
//

import Flutter
import FlutterPluginRegistrant
import Foundation

/// Represents the ChatBot SDK.
public class ChatBotSdk {
    // MARK: - Properties
    
    /// The configuration for the ChatBot SDK.
    let configuration: ChatBotConfiguration
    
    /// The engine for running the Flutter UI.
    let engine: ChatBotEngine
    
    /// The presenter for displaying the Flutter UI.
    let uiPresenter: ChatBotUIPresenter
    
    // MARK: - Initialization
    
    /// Initializes the ChatBot SDK with the specified configuration and view controller.
    /// - Parameters:
    ///   - configuration: The configuration for the ChatBot SDK.
    ///   - viewController: The view controller from which the ChatBot UI will be presented.
    public init(configuration: ChatBotConfiguration, viewController: UIViewController)  {
        
        self.configuration = configuration
        self.engine = ChatBotEngine(configuration: configuration)
        self.uiPresenter = ChatBotUIPresenter(engine: engine, viewController: viewController)
        
        // Initialize the engine
        engine.run(withEntryPoint: "main", libraryURI: "package:chatbot/main.dart", initialRoute: nil)
    }
    
    // MARK: - Methods
    
    /// Opens the chatbot UI from the specified view controller.
    public func openBot() {
        uiPresenter.presentUI()
    }
}
