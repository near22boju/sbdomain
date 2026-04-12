//
//  SBTransactionType+Extensions.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

public extension SBTransactionType {

    //  MARK: - Computed Properties
    var title: String {
        switch self {
        case .credit: return "domain.transaction.credit".localizedDomain
        case .debit: return "domain.transaction.debit".localizedDomain
        }
    }

    var isCredit: Bool {
        self == .credit
    }

    var isDebit: Bool {
        self == .debit
    }    
}
