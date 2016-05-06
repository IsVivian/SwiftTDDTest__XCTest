//
//  FrogTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class FrogTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFrogTransformation() {
        
        let frog = Frog()
        frog.transform()
        
        XCTAssert(frog.name == "Frog", "Pass")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
            
            var sum:Double = 0
            for i in 1...1000000 {
            
                sum += Double(i)
            
            }
            
        }
    }

}
