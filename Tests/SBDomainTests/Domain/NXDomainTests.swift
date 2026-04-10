//  NXDomainTests.swift
//  NXDomain
//
//  Created by Sivakumar Boju on 4/1/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import NXDomain

final class NXDomainTests: XCTestCase {
    func testInitializesSuccessfully() {
        let domain = NXDomain()
        XCTAssertNotNil(domain)
    }
}
