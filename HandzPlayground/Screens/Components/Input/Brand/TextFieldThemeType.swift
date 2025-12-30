//
//  TextFieldThemeType.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 29/12/25.
//
import Foundation
import HandzDesignSystem

enum TextFieldThemeType: CaseIterable {
    case defaultTheme
    case partner

    var title: String {
        switch self {
        case .defaultTheme: return "Default"
        case .partner: return "Partner"
        }
    }

    var theme: TextFieldTheme {
        switch self {
        case .defaultTheme:
            return DefaultTextFieldTheme()
        case .partner:
            return PartnerTextFieldTheme()
        }
    }
}
