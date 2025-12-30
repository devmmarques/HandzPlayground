//
//  DSButtonVariant.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import HandzDesignSystem

extension DSButtonVariant {
    var displayName: String {
        switch self {
        case .primary: return "Primary"
        case .secondary: return "Secondary"
        }
    }
}

