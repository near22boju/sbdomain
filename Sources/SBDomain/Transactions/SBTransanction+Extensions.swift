//
//  SBTransaction+Extensions.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

public extension SBTransaction {

    //  MARK: - Computed Properties

    var displayDescription: String {
        guard let description else {
            return merchantName
        }

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
}
