//
//  SBTransactionLocalRepository.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import Foundation

public protocol SBTransactionLocalRepository: Sendable {

    //  MARK: - Read
    /// Returns all stored transactions sorted by most recent first
    func fetchAll() async throws -> [SBTransaction]

    //  MARK: - Write
    /// Saves or updates a single transaction (upsert)
    func save(_ transaction: SBTransaction) async throws

    /// Saves or updates multiple transactions (upsert/merge)
    func save(_ transactions: [SBTransaction]) async throws

    //  MARK: - Delete
    /// Deletes all stored transactions
    func deleteAll() async throws
}
