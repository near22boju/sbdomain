//  String+Extension.swift
//  SBDomain
//
//  Created by Sivakumar Boju on 4/10/26.
//  Copyright (c) 2026 Near 22. All rights reserved
//

import Foundation

public extension String {
    var localizedDomain: String {
        NSLocalizedString(self, bundle: Bundle.module, comment: "")
    }

    func localizedDomain(with arguments:CVarArg...)->String {
        return String(format: localizedDomain, arguments: arguments)
    }
    
    func localized(with arguments: [CVarArg]) -> String {
        String(format: self.localizedDomain, arguments: arguments)
    }
}
