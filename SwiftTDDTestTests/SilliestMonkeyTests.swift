//
//  SilliestMonkeyTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class SilliestMonkeyTests: XCTestCase {

    var kiki = Monkey.init(name: "Kiki", silliness: MonkeyIntelligent.ExtremelySilly)
    var carl = Monkey.init(name: "Carl", silliness: MonkeyIntelligent.NotSilly)
    var jane = Monkey.init(name: "Jane", silliness: MonkeyIntelligent.VerySilly)
    
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let sillMonkeys = silliest([kiki, carl, jane])
        
        XCTAssertTrue(sillMonkeys.contains(carl), "pass")
        XCTAssertTrue(sillMonkeys.contains(kiki), "pass")
//        XCTAssertTrue(sillMonkeys.contains(jane), "pass")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
