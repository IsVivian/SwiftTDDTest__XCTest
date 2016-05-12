//
//  AlertControllerTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/9.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class AlertControllerTests: XCTestCase {
    
    var vc: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        vc = ViewController()
        UIApplication.sharedApplication().keyWindow?.rootViewController = vc
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAlert_HasTitle() {
    
        vc.alertBtnAct(UIButton())
        XCTAssertEqual(vc.alertBtn.titleLabel?.text, "alertBtn")
        XCTAssertTrue(vc.presentedViewController is UIAlertController)
        XCTAssertEqual(vc.presentedViewController?.title, "TestTitle")
    
    }
    
    func testAlert_FirstActionStoresCancel() {
    
        vc.Action = MockAlertAction.self
        vc.alertBtnAct(UIButton())

        let alertController = vc.presentedViewController as! UIAlertController
        let action = alertController.actions.first as! MockAlertAction
        action.handler!(action)
        XCTAssertEqual(vc.actionString, "Cancel")
    }
    
}

class MockAlertAction : UIAlertAction {
    typealias Handler = ((UIAlertAction) -> Void)
    var handler: Handler?
    var mockTitle: String?
    var mockStyle: UIAlertActionStyle
    convenience init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?) {
        self.init()
        mockTitle = title
        mockStyle = style
        self.handler = handler
    }
    override init() {
        mockStyle = .Default
        super.init()
    }
}
