//
//  SBTransaction+Extensions.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import Foundation

public extension SBTransaction {

    //  MARK: - Computed Properties

    var displayDescription: String {
        let trimmedDescription = description.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedDescription.isEmpty else {
            return merchantName
        }

        return trimmedDescription
    }

    var maskedCardNumber: String {
        let suffix = fromCardNumber.suffix(4)
        return "(\(suffix))"
    }

    var displayFromAccount: String {
        "\(fromAccount) \(maskedCardNumber)"
    }

    var displayAmount: String {
        let value = amount.value

        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2

        let formattedValue = formatter.string(from: NSNumber(value: value)) ?? "\(value)"

        return "\(formattedValue) \(amount.currency)"
    }
    
    var displaySignedAmount: String {
        let sign = type.isCredit ? "+" : "-"
        return "\(sign)\(displayAmount)"
    }

}
