//
//  SBMoneyTests.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import SBDomain

final class SBMoneyTests: XCTestCase {

    func test_init_setsProperties() {
        let money = SBMoney(
            value: 200.20,
            currency: "CAD"
        )

        XCTAssertEqual(money.value, 200.20)
        XCTAssertEqual(money.currency, "CAD")
    }

    func test_equatable_sameValues_areEqual() {
        let lhs = SBMoney(
            value: 5.00,
            currency: "CAD"
        )

        let rhs = SBMoney(
            value: 5.00,
            currency: "CAD"
        )

        XCTAssertEqual(lhs, rhs)
    }

    func test_equatable_differentValues_areNotEqual() {
        let lhs = SBMoney(
            value: 5.00,
            currency: "CAD"
        )

        let rhs = SBMoney(
            value: 10.00,
            currency: "CAD"
        )

        XCTAssertNotEqual(lhs, rhs)
    }

    func test_equatable_differentCurrencies_areNotEqual() {
        let lhs = SBMoney(
            value: 5.00,
            currency: "CAD"
        )

        let rhs = SBMoney(
            value: 5.00,
            currency: "USD"
        )

        XCTAssertNotEqual(lhs, rhs)
    }
}
