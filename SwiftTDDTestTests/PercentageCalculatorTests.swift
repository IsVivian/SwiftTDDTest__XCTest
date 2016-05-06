//
//  PercentageCalculatorTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class PercentageCalculatorTests: XCTestCase {

    //1.创建实例
    var vc: ViewController!
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //2.初始化vc
//        let story = UIStoryboard.init(name: "Main", bundle: NSBundle.mainBundle())
//        vc = story.instantiateInitialViewController() as! ViewController
        
        vc = UIStoryboard.init(name: "Main", bundle: NSBundle.mainBundle()).instantiateInitialViewController() as! ViewController
        
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
    
    func testPercentageCalculator() {
        
        let p = vc.percentage(50, 50)
        XCTAssert(p == 25)
        
    }
    
    func testLabelValuesShowedProperly() {
        
        //由于我们并不真正需要这个常量也永远不会使用这个常量，所以使用_下划线来代替常量名。
        //它只是用来告诉编译器“假装访问并触发视图的所有方法”
        let _ = vc.view
        vc.updateLabels(Float(80.0), Float(50.0), Float(40.0))
        
        XCTAssert(vc.numberLabel.text == "80.0", "number doesn't show the right text")
        XCTAssert(vc.percentageLabel.text == "50.0%", "percentageLabel doesn't show the right text")
        XCTAssert(vc.resultLabel.text == "40.0", "resultLabel doesn't show the right text")
        
    }


}
