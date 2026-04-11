//
//  SBTransactionTypeExtensionsTests.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import XCTest
@testable import SBDomain

final class SBTransactionTypeExtensionsTests: XCTestCase {

    func test_title_returnsCreditTransaction_forCredit() {
        XCTAssertEqual(SBTransactionType.credit.title, "Credit Transaction")
    }

    func test_title_returnsDebitTransaction_forDebit() {
        XCTAssertEqual(SBTransactionType.debit.title, "Debit Transaction")
    }

    func test_isCredit_returnsTrue_forCredit() {
        XCTAssertTrue(SBTransactionType.credit.isCredit)
    }

    func test_isCredit_returnsFalse_forDebit() {
        XCTAssertFalse(SBTransactionType.debit.isCredit)
    }

    func test_isDebit_returnsTrue_forDebit() {
        XCTAssertTrue(SBTransactionType.debit.isDebit)
    }

    func test_isDebit_returnsFalse_forCredit() {
        XCTAssertFalse(SBTransactionType.credit.isDebit)
    }
}
