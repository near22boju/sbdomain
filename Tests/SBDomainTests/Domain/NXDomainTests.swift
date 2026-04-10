//  NXDomainTests.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import SBDomain

final class SBDomainTests: XCTestCase {
    func testInitializesSuccessfully() {
        let domain = SBDomain()
        XCTAssertNotNil(domain)
    }
}
