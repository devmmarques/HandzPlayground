//
//  TypographyThemeViewModel.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//

import Combine
import HandzDesignSystem

final class TypographyThemeViewModel: ObservableObject {

    @Published var selectedTheme: TypographyThemeOption = .defaultTheme {
        didSet {
            DSTypography.theme = TypographyThemeFactory.make(selectedTheme)
        }
    }

    init() {
        DSTypography.theme = TypographyThemeFactory.make(selectedTheme)
    }
}
