//
//  TypographyThemeOption.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//

enum TypographyThemeOption: String, CaseIterable, Identifiable {
    case defaultTheme = "Default"
    case compact = "Compact"
    case large = "Large"

    var id: String { rawValue }
}
