//
//  TextFieldPlaygroundViewModel.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 29/12/25.
//

import Combine
import HandzDesignSystem

final class TextFieldPlaygroundViewModel: ObservableObject {

    @Published var text: String = ""
    @Published var label: String = "Label"
    @Published var helperText: String = "Helper text"
    @Published var errorText: String? = nil

    @Published var isEnabled: Bool = true
    @Published var forceFocus: Bool = false

    @Published var selectedTheme: TextFieldThemeType = .defaultTheme
}
