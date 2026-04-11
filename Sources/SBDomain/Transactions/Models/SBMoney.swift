//
//  SBMoney.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import Foundation

public struct SBMoney: Sendable, Equatable {

    //  MARK: - Properties
    public let value: Double
    public let currency: String

    //  MARK: - Init
    public init(
        value: Double,
        currency: String
    ) {
        self.value = value
        self.currency = currency
    }
}
