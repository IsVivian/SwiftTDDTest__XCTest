//
//  BaseTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class BaseTests: XCTestCase {

    /*
     在此可以定义测试中用到的属性
     */
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        /*
         在此添加准备代码，此方法在每个测试用例执行前都会去执行
         */
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        /*
         在此添加清理代码，此方法在每个测试用例执行后执行
         */
        
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        /*
         这是一个测试用例
         */
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        
        /*
         这是一个测试用例
         */
        
        self.measureBlock {
            // Put the code you want to measure the time of here.
            
            /*
             在此填写需要测量运行时间的代码
             */
            
        }
    }

}
