//
//  BananaTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class BananaTests: XCTestCase {

    var banana = Banana()
    
    
    override func setUp() {
        super.setUp()
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
    
    func testBanana_peel_makesTheBananaEdible() {
    
        banana.peel()
        
        XCTAssertTrue(banana.isEdible)
    
    }

}
