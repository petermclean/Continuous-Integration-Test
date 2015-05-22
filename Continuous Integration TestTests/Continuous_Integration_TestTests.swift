//
//  Continuous_Integration_TestTests.swift
//  Continuous Integration TestTests
//
//  Created by Groom, Stephen on 21/05/2015.
//  Copyright (c) 2015 Sage. All rights reserved.
//

import UIKit
import XCTest

class Continuous_Integration_TestTests: XCTestCase {
    
    func testNumberOfRows() {
        let dataSource = DataSource()
        let rows = dataSource.tableView(UITableView(), numberOfRowsInSection: 0)
        XCTAssertEqual(rows, 3)
    }
    
}
