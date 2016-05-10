//
//  EventDescriptionFormatterTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class EventDescriptionFormatterTests: XCTestCase {

    class MockEvent: EventProtocol {
    
        var name: String
        var starDate: NSDate
        var endDate: NSDate
        
        init() {
        
            self.name = "Fixture Time"
            self.starDate = NSDate.dateFormatterString("2016-05-10 14:57:00")
            self.endDate = NSDate.dateFormatterString("2016-05-10 14:58:00")
        
        }
        
    }
    
    var descriptionFormatter: EventDescriptionFormatter!
    var mockEvent = MockEvent()
    
    override func setUp() {
        super.setUp()
        
        descriptionFormatter = EventDescriptionFormatter()
        
    }
    
    override func tearDown() {
        
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
    
    func testEventDescriptionFormatter() {
    
        XCTAssertEqual(descriptionFormatter.eventDescriptionFromEvent(mockEvent), "Fixture Time:开始于2016-05-10 14:57:00，结束于2016-05-10 14:58:00")
    
    }

}
