//
//  MoyaIssue844Tests.swift
//  MoyaIssue844Tests
//
//  Created by Jon Lambert on 06/01/2017.
//  Copyright © 2017 Evada. All rights reserved.
//

import XCTest
import Moya
@testable import MoyaIssue844

class MoyaIssue844Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let expectation = self.expectation(description: "Request timed out")
        
        let provider = RxMoyaProvider<API>()
        provider
            .request(.test)
            .debug()
            .subscribe(onNext: { response in
                expectation.fulfill()
            })
        waitForExpectations(timeout: 10.0, handler: nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
