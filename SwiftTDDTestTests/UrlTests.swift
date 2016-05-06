//
//  UrlTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class UrlTests: XCTestCase {
    
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
    
    var urlInstance = Url.init(baseUrl: "http://localhost:8080/api/")
    
    func testShouldGetCorrectPathWhenNoSegmentProvided() {
    
        let resourcePath = "customers"
        let result = urlInstance.getActualPathFrom(resourcePath, segments: [String: String]())
        XCTAssertEqual(result, "http://localhost:8080/api/customers", "Can not get corrent path when no segments provided")
    
    }
    
    func testGetCorrectPathGivenOneSegment() {
    
        let resourcePath = "customer/{id}"
        let result = urlInstance.getActualPathFrom(resourcePath, segments: ["id": "10"])
        XCTAssertEqual(result, "http://localhost:8080/api/customer/10", "Can not get corrent path when only one segment provided")
        
    }
    

}
