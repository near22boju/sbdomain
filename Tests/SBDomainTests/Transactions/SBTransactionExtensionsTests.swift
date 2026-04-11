//
//  SBTransactionExtensionsTests.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import SBDomain

final class SBTransactionExtensionsTests: XCTestCase {

    func test_displayDescription_returnsDescription_whenPresent() {
        let sut = makeTransaction(description: "Bill payment")

        XCTAssertEqual(sut.displayDescription, "Bill payment")
    }

    func test_displayDescription_returnsMerchantName_whenDescriptionIsNil() {
        let sut = makeTransaction(
            merchantName: "Manulife",
            description: nil
        )

        XCTAssertEqual(sut.displayDescription, "Manulife")
    }

    func test_displayDescription_returnsMerchantName_whenDescriptionIsEmpty() {
        let sut = makeTransaction(
            merchantName: "Manulife",
            description: ""
        )

        XCTAssertEqual(sut.displayDescription, "Manulife")
    }

    func test_displayDescription_returnsMerchantName_whenDescriptionIsWhitespaceOnly() {
        let sut = makeTransaction(
            merchantName: "Manulife",
            description: "   "
        )

        XCTAssertEqual(sut.displayDescription, "Manulife")
    }

    func test_maskedCardNumber_returnsLastFourDigitsInParentheses() {
        let sut = makeTransaction(fromCardNumber: "4537350001688012")

        XCTAssertEqual(sut.maskedCardNumber, "(8012)")
    }

    func test_maskedCardNumber_returnsEntireValue_whenLessThanFourDigits() {
        let sut = makeTransaction(fromCardNumber: "123")

        XCTAssertEqual(sut.maskedCardNumber, "(123)")
    }

    func test_displayFromAccount_combinesAccountAndMaskedCardNumber() {
        let sut = makeTransaction(
            fromAccount: "Momentum Regular Visa",
            fromCardNumber: "4537350001688012"
        )

        XCTAssertEqual(sut.displayFromAccount, "Momentum Regular Visa (8012)")
    }
}

// MARK: - Helpers

private extension SBTransactionExtensionsTests {
    func makeTransaction(
        id: String = "txn_1",
        key: String = "txn_1",
        type: SBTransactionType = .debit,
        merchantName: String = "Mb - Cash Advance To - 1785",
        description: String? = "Bill payment",
        amount: SBMoney = SBMoney(value: 200.20, currency: "CAD"),
        postedDate: String = "2021-05-31",
        fromAccount: String = "Momentum Regular Visa",
        fromCardNumber: String = "4537350001688012"
    ) -> SBTransaction {
        SBTransaction(
            id: id,
            key: key,
            type: type,
            merchantName: merchantName,
            description: description,
            amount: amount,
            postedDate: postedDate,
            fromAccount: fromAccount,
            fromCardNumber: fromCardNumber
        )
    }
}
