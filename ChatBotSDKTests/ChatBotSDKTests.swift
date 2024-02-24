//
//  ChatBotSDKTests.swift
//  ChatBotSDKTests
//
//  Created by Shiv Mohan Singh on 19/02/24.
//

import XCTest
@testable import ChatBotSDK

final class ChatBotSDKTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testChatBotSDK() async {
        let hw = ChatBot()
        
        do {
            try await hw.initialize(appId: "test_app_id", baseUrl: "www.testurl.com",viewController: UIViewController())
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        XCTAssertEqual(hw.id, "test_app_id")
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
