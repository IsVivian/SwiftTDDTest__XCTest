//
//  SwiftTDDTestTests.swift
//  SwiftTDDTestTests
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest
@testable import SwiftTDDTest

class SwiftTDDTestTests: XCTestCase {
    
    
    
    /*
     方法在XCTestCase的测试方法调用之前调用，可以在测试之前创建test case方法中需要用到的一些对象等
     
     XCTestCase的初始化不是用户控制的，所以属性在setUp方法中初始化的属性只能被定义为optional的，不定义成optional的话，只能在定义属性的时候直接给出初始化。
     
    */
    
//    //1.optional类型
//    var calender: NSCalendar?
//    var locale: NSLocale?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
//        //1.optional类型
//        self.calender = NSCalendar.init(identifier: NSGregorianCalendar)
//        self.locale = NSLocale.init(localeIdentifier: "en_US")
//        
//        //2.直接初始化
//        var calender2 = NSCalendar.init(identifier: NSGregorianCalendar)
//        var locale2 = NSLocale.init(localeIdentifier: "en_US")
        
        
    }
    
    /*
     当测试全部结束之后调用tearDown方法，法则会在全部的test cast执行结束之后清理测试现场，释放资源删除不用的对象等
     */
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    /*
     测试代码执行性能
     */
    func testPerformanceExample() {
        // This is an example of a performance test case.
        
        let dataFormatter = NSDateFormatter()
        dataFormatter.dateStyle = .LongStyle
        dataFormatter.timeStyle = .ShortStyle
        let date = NSDate()
        
        self.measureBlock {
            // Put the code you want to measure the time of here.
            
            _ = dataFormatter.stringFromDate(date)
            
        }
    }
    
    func testAsynchronousURLConnection() {
    
        let URL = NSURL(string: "http://www.baidu.com/")!
        let expectation = expectationWithDescription("GET\(URL)")
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(URL) { (data, response, error) in
            
            expectation.fulfill() // 告诉expectation满足测试了
            XCTAssertNotNil(data, "返回数据不应该为空")
            XCTAssertNil(error, "error应该为空")
            if response != nil {
            
                let httpResponse: NSHTTPURLResponse = response as! NSHTTPURLResponse
                XCTAssertEqual(httpResponse.URL!, URL, "HTTPResponse的URL应该和请求的URL一致")
                XCTAssertEqual(httpResponse.MIMEType! as String, "text/html", "HTTPResponse内容应该是text/html")
            }else {
            
                XCTFail("返回内容不是NSHTTPResponse类型")
                
            }
            
        }
        
        task.resume()
        waitForExpectationsWithTimeout(task.originalRequest!.timeoutInterval) { (error) in
            task.cancel()
        }
    
    }
    
    func testAsynchronousURLConnection_Second() {
    
        let URL = "http://nshipster.com/"
        let expectation = expectationWithDescription("GET\(URL)")
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(NSURL.init(string: URL)!) { (data, response, error) in
            
            expectation.fulfill()
            
            XCTAssertNotNil(data, "data should not be nil")
            XCTAssertNil(error, "error should be nil")
            
            if let HTTPResponse: NSHTTPURLResponse? = response as? NSHTTPURLResponse {
            
                XCTAssertEqual(HTTPResponse!.URL?.absoluteString, URL, "HTTP response URL should be equal to original URL")
                XCTAssertEqual(HTTPResponse?.statusCode, 200, "HTTTP response status code should be 200")
                XCTAssertEqual((HTTPResponse?.MIMEType)! as String, "text/html", "HTTP response content type should be text/html")
            
            }else {
            
                XCTFail("Response was not NSHTTPResponse")
            
            }
            
        }
        
        task.resume()
        
        waitForExpectationsWithTimeout((task.originalRequest?.timeoutInterval)!) { (error) in
            task.cancel()
        }
    
    }
    

    
    
}
