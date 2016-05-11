//
//  SecondViewControllerTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/11.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

@testable import SwiftTDDTest


class SecondViewControllerTests: XCTestCase {
    
    //创建实例
    var secondVC: SecondViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //初始化
        secondVC = SecondViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        secondVC = nil
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
    
    func test_labelValuesShowedProperly() {
    
        //由于我们不是真正的需要使用也永远不会使用这个常量，所以可以使用_下划线来代替这个常量名。
        //他只是用来告诉编译器“假装访问并触发视图的所有方法”
        let _ = secondVC.view
        secondVC.updateLabels(Float(80.0), Float(50.0), Float(40.0))
        
        XCTAssert(secondVC.numberLabel.text == "80.0", "numberLabel doesn't show the right text")
        XCTAssert(secondVC.percentageLabel.text == "50.0%", "percentLabel doesn't show the right text")
        XCTAssert(secondVC.resultLabel.text == "40.0", "resultLabel doesn't show the right text")
    
    }
    
}
