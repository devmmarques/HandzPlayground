//
//  DSButtonState.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//
import HandzDesignSystem

extension DSButtonState {
    var displayName: String {
        switch self {
        case .normal: return "Normal"
        case .disabled: return "Disabled"
        case .loading: return "Loading"
        }
    }
}
