//
//  SBTransactionRepository.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import Foundation

public protocol SBTransactionRepository: Sendable {
    func fetchTransactions() async throws -> [SBTransaction]
    func fetchTransactions(since postedDate: String) async throws -> [SBTransaction]
}
