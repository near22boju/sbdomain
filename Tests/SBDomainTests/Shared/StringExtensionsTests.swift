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

        XCTAssertEqual(sut, "Credit transaction")
    }

    func test_localizedDomain_withArguments_formatsString() {
        let sut = "domain.transaction.amount".localizedDomain(with: 12.34, "CAD")

        XCTAssertEqual(sut, "12.34 CAD")
    }

    func test_localized_withArgumentsArray_formatsString() {
        let sut = "domain.transaction.amount".localized(with: [12.34, "CAD"])

        XCTAssertEqual(sut, "12.34 CAD")
    }
    
    func test_localizedDomain_returnsKey_whenMissing() {
        let sut = "domain.missing.key".localizedDomain
        XCTAssertEqual(sut, "domain.missing.key")
    }
    
    func test_localized_withEmptyArguments_returnsLocalizedValue() {
        let sut = "domain.transaction.credit".localized(with: [])
        XCTAssertEqual(sut, "Credit transaction")
    }
    
    func test_localizedDomainAndLocalizedArray_returnSameFormattedValue() {
        let variadic = "domain.transaction.amount".localizedDomain(with: 12.34, "CAD")
        let array = "domain.transaction.amount".localized(with: [12.34, "CAD"])

        XCTAssertEqual(variadic, array)
    }
}
