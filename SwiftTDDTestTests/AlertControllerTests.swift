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
        //设置vc为根视图控制器，否则视图控制器不能弹出这个弹窗视图控制器
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
    
    //测试标题
    func testAlert_HasTitle() {
    
        vc.alertBtnAct(UIButton())
        XCTAssertEqual(vc.alertBtn.titleLabel?.text, "alertBtn")
        XCTAssertTrue(vc.presentedViewController is UIAlertController)
        XCTAssertEqual(vc.presentedViewController?.title, "TestTitle")
    
    }
    
    //测试取消按钮，由于无法获取弹窗动作的闭包，所以我们需要模拟弹窗动作，为了存储这个handler并在测试中调用它，看弹窗动作是否和我们预期的一样
    func testAlert_FirstActionStoresCancel() {
    
        //设置动作为模拟弹窗的动作，插入这个弹窗动作
        vc.Action = MockAlertAction.self
        //调用代码弹出弹框
        vc.alertBtnAct(UIButton())

        let alertController = vc.presentedViewController as! UIAlertController
        //获取取消动作
        let action = alertController.actions.first as! MockAlertAction
        action.handler!(action)
        //断言当前的动作是否和我们预期的一样
        XCTAssertEqual(vc.actionString, "Cancel")
        XCTAssertEqual(action.mockTitle, "TestTitle", "MockAction is UIAlertController's action")
        
    }
    
    func testAlert_SecondActionStoresOK() {
    
        //设置动作为模拟弹窗的动作，插入这个弹窗动作
        vc.Action = MockAlertAction.self
        //调用代码弹出弹框
        vc.alertBtnAct(UIButton())
        
        let alertController = vc.presentedViewController as! UIAlertController
        //获取取消动作
        let action = alertController.actions.last as! MockAlertAction
        action.handler!(action)
        
        XCTAssertEqual(vc.actionString, "OK")
    
    }
    
    
}

//添加一个模拟alertView的类：mock
//这个模拟类的主要工作是捕获handler块
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
        mockTitle = "TestTitle"
        super.init()
    }
}
