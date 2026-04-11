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
    func fetchAll() async throws -> [SBTransaction]

    //  MARK: - Write
    func save(_ transaction: SBTransaction) async throws
    func save(_ transactions: [SBTransaction]) async throws

    //  MARK: - Delete
    func deleteAll() async throws
}
