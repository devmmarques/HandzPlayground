//
//  PartnerTextFieldTheme.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 29/12/25.
//
import HandzDesignSystem
import SwiftUI
public struct PartnerTextFieldTheme: TextFieldTheme {

    public init() {}

    public func backgroundColor(state: DSTextFieldState) -> Color {
        state == .disabled
        ? Color(DSColor.Fill.disabled)
        : Color(DSColor.Fill.transparent)
    }

    public func borderColor(state: DSTextFieldState) -> Color {
        switch state {
        case .focused:
            return Color(DSColor.Border.focus)
        case .error:
            return Color(DSColor.Border.error)
        case .disabled:
            return Color(DSColor.Border.disabled)
        default:
            return Color(DSColor.Border.standard)
        }
    }

    public func borderWidth(state: DSTextFieldState) -> CGFloat {
        state == .focused ? 2 : 1
    }

    public func labelColor(state: DSTextFieldState) -> Color {
        Color(DSColor.Text.secondary)
    }

    public func textColor(state: DSTextFieldState) -> Color {
        Color(DSColor.Text.primary)
    }

    public func helperColor(state: DSTextFieldState) -> Color {
        state == .error
        ? Color(DSColor.Fill.error)
        : Color(DSColor.Text.secondary)
    }

    public func radius() -> DSRadiusToken {
        .md
    }

    public func height() -> CGFloat {
        52
    }
}
