//
//  HandzButtonTheme.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 28/12/25.
//
import HandzDesignSystem
import SwiftUI

public struct HandzButtonTheme: ButtonTheme {
    
    public init() {}

    public func backgroundColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch (variant, state) {
        case (.primary, .normal), (.primary, .loading):
            return DSColor.Fill.main
        case (.primary, .disabled):
            return DSColor.Fill.main
        case (.secondary, _):
            return Color.clear
        }
    }
    
    public func textColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch variant {
        case .primary:
            return DSColor.Text.primary
        case .secondary:
            switch state {
            case .disabled:
                return DSColor.Text.disabled
            default:
                return DSColor.Fill.main
            }
        }
    }
    
    public func borderColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch variant {
        case .secondary:
            switch state {
            case .disabled:
                return DSColor.Fill.main
            default:
                return DSColor.Fill.secondary
            }
        default:
            return Color.clear
        }
    }
    
    public func height(for size: DSButtonSize) -> CGFloat {
        switch size {
        case .small: return 32
        case .medium: return 44
        case .large: return 56
        }
    }
    
    public func radius(for size: DSButtonSize) -> DSRadiusToken {
        switch size {
        case .small: return .sm
        case .medium: return .md
        case .large: return .lg
        }
    }
    
    public func horizontalPadding(for size: DSButtonSize) -> DSSpacingToken {
        switch size {
        case .small: return .sm
        case .medium: return .md
        case .large: return .lg
        }
    }
    
    public func font(for size: DSButtonSize) -> Font {
        switch size {
        case .small: return DSTypography.font(.bodySmall)
        case .medium: return DSTypography.font(.bodyMedium)
        case .large: return DSTypography.font(.bodyLarge)
        }
    }
    
    public func borderColor(variant: DSButtonVariant) -> Color {
        switch variant {
        case .secondary:
            return DSColor.Fill.main
        default:
            return .clear
        }
    }
    
    public func borderWidth(variant: DSButtonVariant) -> CGFloat {
        switch variant {
        case .secondary:
            return 1
        default:
            return 0
        }
    }
}

