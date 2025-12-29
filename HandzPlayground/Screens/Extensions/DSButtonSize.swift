//
//  DSButtonSize.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 28/12/25.
//
import HandzDesignSystem

extension DSButtonSize {
    var displayName: String {
        switch self {
            case .small: return "Small"
            case .medium: return "Medium"
            case .large: return "Large"
        }
    }
}
