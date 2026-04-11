//
//  SBTransactionTests.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import SBDomain

final class SBTransactionTests: XCTestCase {

    func test_init_setsProperties() {
        let amount = SBMoney(
            value: 200.20,
            currency: "CAD"
        )

        let transaction = SBTransaction(
            id: "txn_1",
            key: "txn_1",
            type: .debit,
            merchantName: "Mb - Cash Advance To - 1785",
            description: "Bill payment",
            amount: amount,
            postedDate: "2021-05-31",
            fromAccount: "Momentum Regular Visa",
            fromCardNumber: "4537350001688012"
        )

        XCTAssertEqual(transaction.id, "txn_1")
        XCTAssertEqual(transaction.key, "txn_1")
        XCTAssertEqual(transaction.type, .debit)
        XCTAssertEqual(transaction.merchantName, "Mb - Cash Advance To - 1785")
        XCTAssertEqual(transaction.description, "Bill payment")
        XCTAssertEqual(transaction.amount, amount)
        XCTAssertEqual(transaction.postedDate, "2021-05-31")
        XCTAssertEqual(transaction.fromAccount, "Momentum Regular Visa")
        XCTAssertEqual(transaction.fromCardNumber, "4537350001688012")
    }

    func test_equatable_sameValues_areEqual() {
        let lhs = makeTransaction()
        let rhs = makeTransaction()

        XCTAssertEqual(lhs, rhs)
    }

    func test_equatable_differentIds_areNotEqual() {
        let lhs = makeTransaction(id: "txn_1")
        let rhs = makeTransaction(id: "txn_2")

        XCTAssertNotEqual(lhs, rhs)
    }

    func test_identifiable_idMatchesExpectedValue() {
        let transaction = makeTransaction(id: "txn_123")

        XCTAssertEqual(transaction.id, "txn_123")
    }

    func test_description_canBeNil() {
        let transaction = makeTransaction(description: nil)

        XCTAssertNil(transaction.description)
    }
}

// MARK: - Helpers

private extension SBTransactionTests {
    func makeTransaction(
        id: String = "txn_1",
        key: String = "txn_1",
        type: SBTransactionType = .debit,
        merchantName: String = "Mb - Cash Advance To - 1785",
        description: String = "Bill payment",
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
