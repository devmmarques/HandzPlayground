//
//  BrandOption.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 28/12/25.
//
import HandzDesignSystem

enum BrandOption: CaseIterable {
    case handz
    case partner

    var displayName: String {
        switch self {
        case .handz: return "Handz"
        case .partner: return "Partner"
        }
    }

    var buttonTheme: ButtonTheme {
        switch self {
        case .handz:
            return HandzButtonTheme()
        case .partner:
            return PartnerButtonTheme()
        }
    }
}
