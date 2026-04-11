//
//  SBTransactionTypeTests.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import SBDomain

final class SBTransactionTypeTests: XCTestCase {

    func test_debit_rawValue() {
        XCTAssertEqual(SBTransactionType.debit.rawValue, "debit")
    }

    func test_credit_rawValue() {
        XCTAssertEqual(SBTransactionType.credit.rawValue, "credit")
    }

    func test_init_withValidRawValue_debit() {
        let value = SBTransactionType(rawValue: "debit")

        XCTAssertEqual(value, .debit)
    }

    func test_init_withValidRawValue_credit() {
        let value = SBTransactionType(rawValue: "credit")

        XCTAssertEqual(value, .credit)
    }

    func test_init_withInvalidRawValue_returnsNil() {
        let value = SBTransactionType(rawValue: "other")

        XCTAssertNil(value)
    }
}
