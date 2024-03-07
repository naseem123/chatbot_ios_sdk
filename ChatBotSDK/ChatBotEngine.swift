//
//  ChatBotEngine.swift
//  ChatBotSDK
//
//  Created by Shiv Mohan Singh on 19/02/24.
//

import Foundation
import Flutter
import FlutterPluginRegistrant

/// Handles the initialization and execution of the Flutter engine.
class ChatBotEngine {
    // MARK: - Properties
    
    /// The configuration for the ChatBot SDK.
    private let configuration: ChatBotConfiguration
    
    /// The Flutter engine instance.
    let flutterEngine: FlutterEngine
    
    // MARK: - Initialization
    
    /// Initializes the `ChatBotEngine`.
    /// - Parameter configuration: The configuration for the ChatBot SDK.
    public init(configuration: ChatBotConfiguration) {
        self.configuration = configuration
        flutterEngine = FlutterEngine()
    }
    
    // MARK: - Methods
    
    /// Runs the Flutter engine with the specified entry point and parameters.
    /// - Parameters:
    ///   - entryPoint: The entry point of the Flutter application.
    ///   - libraryURI: The URI of the Flutter library.
    ///   - initialRoute: The initial route of the Flutter application.
    func run(withEntryPoint entryPoint: String, libraryURI: String, initialRoute: String?) {
        DispatchQueue.main.async {
            self.flutterEngine.run(
                withEntrypoint: entryPoint,
                libraryURI: libraryURI,
                initialRoute: initialRoute,
                entrypointArgs: [self.configuration.appId, self.configuration.originURL, self.configuration.baseUrl ] // Pass arguments if needed
            )
            GeneratedPluginRegistrant.register(with: self.flutterEngine)
        }
    }
}
