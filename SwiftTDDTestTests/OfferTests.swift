//
//  OfferTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class OfferTests: XCTestCase {

    var banana: Banana!
    var offer = Offer()
    
    
    override func setUp() {
        super.setUp()
        
        banana = Banana()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        banana = nil
    }

    func testOffer_whenTheBananaIsPeeled_offersTheBanana() {
    
        //1.Arrange:
        banana.peel()
        
        //2.Act:
        let message = offer.offer(banana)
        
        //3.Assert:
        XCTAssertEqual(message, "Hey, would you like a banana?")
    
    }
    
    func testOffer_whenTheBananaIsntPeeled_offersToPeelTheBanana() {
    
        let message = offer.offer(banana)
        
        XCTAssertEqual(message, "Hey, want me to peel a banana for you?")
        
    }
    
}
