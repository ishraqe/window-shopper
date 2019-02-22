//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by ishraqe manjur on 22/2/19.
//  Copyright © 2019 Ishraqe Manjur. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testWageHour() {
        XCTAssert(Wage.getHours(forWage: 25, forPrice:100) == 4)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
