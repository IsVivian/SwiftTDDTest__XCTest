//
//  SwiftTDDTestUITests.swift
//  SwiftTDDTestUITests
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class SwiftTDDTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        
        /*
         XCUIApplication是UIApplication在测试进程中的代理（proxy），我们可以在UI测试中通过这个类型和应用本身进行一些交互，比如开始或者终止一个APP
         */
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
