//
//  TableViewControllerTests.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/11.
//  Copyright © 2016年 sherry. All rights reserved.
//

import XCTest

class TableViewControllerTests: XCTestCase {
    
    var vc: ViewController!
    var tableVC: TableViewController!
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        vc = ViewController()
        tableVC = TableViewController()
        
        /*
         如果需要测试是否弹出某个窗口，需要设置该视图控制器为根视图控制器。方式如下：
         UIApplication.sharedApplication().keyWindow?.rootViewController = vc
         */
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
//        vc = nil
//        tableVC = nil
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
    
    func testVCPressedBtn() {
        
        UIApplication.sharedApplication().keyWindow?.rootViewController = vc

        vc.pushBtnAct(UIButton())
        
        XCTAssertEqual(vc.pushBtn.titleLabel?.text, "pushBtn")
        XCTAssertTrue(vc.presentedViewController is TableViewController)
        XCTAssertTrue(vc.presentedViewController?.title == "TestTableVC")
        
    }
    
    func testTableVC_numberOfRow() {
    
//        let mockDataList = ["test1","test2","test3"]
        let tableView = UITableView.init(frame: tableVC.view.bounds, style: .Plain)
        tableView.dataSource = tableVC
        
        XCTAssertEqual(tableView.dataSource!.tableView(tableView, numberOfRowsInSection: 0), tableVC.dataList.count, "mock tableView returns a bad number of rows in section 0")
    
    }
    
    func testTableVC_cellForRowAtIndexPath() {
    
        let tableView = UITableView.init(frame: tableVC.view.bounds, style: .Plain)
        tableView.dataSource = tableVC

        let cell = tableView.dataSource!.tableView(tableView, cellForRowAtIndexPath: NSIndexPath.init(forRow: 0, inSection: 0))
        
        XCTAssertEqual(cell.textLabel?.text, "test", "the text is test~")
    
    }
    
    func testTableView_heightForRowAtIndexPath() {
    
        let tableView = UITableView.init(frame: tableVC.view.bounds, style: .Plain)
        tableView.delegate = tableVC
        
        let height = tableView.delegate?.tableView!(tableView, heightForRowAtIndexPath: NSIndexPath.init(forRow: 0, inSection: 0))
        
        XCTAssertEqual(height, CGFloat(50), "the height is your rowHeight")
        
    }
    
    func testTableView_didSelectRowAtIndexPath() {
    
        UIApplication.sharedApplication().keyWindow?.rootViewController = tableVC

        let tableView = UITableView.init(frame: tableVC.view.bounds, style: .Plain)
        tableView.delegate = tableVC
        
        tableView.delegate?.tableView!(tableView, didSelectRowAtIndexPath: NSIndexPath.init(forRow: 3, inSection: 0))
        XCTAssertTrue(tableVC.haveTableView, "haveTableView should be true")
        XCTAssertTrue(tableVC.presentedViewController is SecondViewController, "pass")
        
        tableView.delegate?.tableView!(tableView, didSelectRowAtIndexPath: NSIndexPath.init(forRow: 0, inSection: 0))
        XCTAssertFalse(tableVC.haveTableView, "haveTableView should be false")
    
    }

}
