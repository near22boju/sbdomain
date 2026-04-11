//
//  SBTransaction.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import Foundation

public struct SBTransaction: Sendable, Equatable, Identifiable {

    //  MARK: - Properties
    public let id: String
    public let key: String
    public let type: SBTransactionType
    public let merchantName: String
    public let description: String?
    public let amount: SBMoney
    public let postedDate: String
    public let fromAccount: String
    public let fromCardNumber: String

    //  MARK: - Init
    public init(
        id: String,
        key: String,
        type: SBTransactionType,
        merchantName: String,
        description: String?,
        amount: SBMoney,
        postedDate: String,
        fromAccount: String,
        fromCardNumber: String
    ) {
        self.id = id
        self.key = key
        self.type = type
        self.merchantName = merchantName
        self.description = description
        self.amount = amount
        self.postedDate = postedDate
        self.fromAccount = fromAccount
        self.fromCardNumber = fromCardNumber
    }
}
