//
//  StringExtensionsTests.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import SBDomain

final class StringExtensionsTests: XCTestCase {

    func test_localizedDomain_returnsLocalizedValue() {
        let sut = "domain.transaction.credit".localizedDomain

        XCTAssertEqual(sut, "Credit Transaction")
    }

    func test_localizedDomain_withArguments_formatsString() {
        let sut = "domain.transaction.amount".localizedDomain(with: 12.34, "CAD")

        XCTAssertEqual(sut, "12.34 CAD")
    }

    func test_localized_withArgumentsArray_formatsString() {
        let sut = "domain.transaction.amount".localized(with: [12.34, "CAD"])

        XCTAssertEqual(sut, "12.34 CAD")
    }
}
