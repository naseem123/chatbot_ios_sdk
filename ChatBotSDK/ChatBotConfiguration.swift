//
//  ChatBotConfiguration.swift
//  ChatBotSDK
//
//  Created by Shiv Mohan Singh on 19/02/24.
//

import Foundation


/// Represents the configuration for the ChatBot SDK.
public struct ChatBotConfiguration {
    /// The unique ID that identifies your user.
    let appId: String
    
    /// The base URL for connecting to the TIKI cloud.
    let baseUrl: String
    
    let originURL: String
    
    
    public init(appId: String, baseUrl: String, originURL: String) {
        self.appId = appId
        self.baseUrl = baseUrl
        self.originURL = originURL
    }
}
