//
//  ButtonSimulatorViewModel.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
import HandzDesignSystem
import Combine

final class ButtonSimulatorViewModel: ObservableObject {

    @Published var title: String = "Button"
    @Published var variant: DSButtonVariant = .primary
    @Published var state: DSButtonState = .normal
    @Published var size: DSButtonSize = .medium
    @Published var selectedBrand: BrandOption = .handz

    func simulateLoading() {
        guard state != .loading else { return }

        state = .loading

        Task {
            try? await Task.sleep(nanoseconds: 2_000_000_000)
            await MainActor.run {
                self.state = .normal
            }
        }
    }
}

