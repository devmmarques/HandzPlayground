//
//  TypographyThemeFactory.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//

import HandzDesignSystem
import SwiftUI

struct TypographyThemeFactory {

    static func make(_ option: TypographyThemeOption) -> DSTypographyTheme {

        switch option {

        case .defaultTheme:
            return DefaultTypographyTheme(
                scale: DSTypographyScale(),
                font: interFont
            )

        case .compact:
            return DefaultTypographyTheme(
                scale: DSTypographyScale(
                    displayLarge: 28,
                    displayMedium: 24,
                    headingLarge: 20,
                    headingMedium: 18,
                    headingSmall: 16,
                    bodyLarge: 14,
                    bodyMedium: 13,
                    bodySmall: 12
                ),
                font: interFont
            )

        case .large:
            return DefaultTypographyTheme(
                scale: DSTypographyScale(
                    displayLarge: 36,
                    displayMedium: 32,
                    headingLarge: 28,
                    headingMedium: 24,
                    headingSmall: 22,
                    bodyLarge: 18,
                    bodyMedium: 16,
                    bodySmall: 14
                ),
                font: interFont
            )
        }
    }

    private static let interFont = DSFontDescriptor(
        regular: { Font.custom("Inter-Regular", size: $0) },
        medium: { Font.custom("Inter-Medium", size: $0) },
        semibold: { Font.custom("Inter-SemiBold", size: $0) },
        bold: { Font.custom("Inter-Bold", size: $0) }
    )
}
