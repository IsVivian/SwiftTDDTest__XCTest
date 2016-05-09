//
//  ProjectTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/9.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class ProjectTests: XCTestCase {
    
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
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_asDictionary() {
    
        let project = Project(id: 5)
        let dic = project.asDictionary()
        XCTAssertEqual(dic["id"] as? Int, 5)
    
    }
    
    func test_asDictionary_with_id_7() {
    
        let project = Project(id: 7)
        let dic = project.asDictionary()
        XCTAssertEqual(dic["id"] as? Int, 7)
    
    }
    
}
