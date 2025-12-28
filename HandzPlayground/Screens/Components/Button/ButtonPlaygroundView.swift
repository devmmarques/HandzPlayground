//
//  ButtonPlaygroundView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
import HandzDesignSystem

struct ButtonPlaygroundView: View {

    @StateObject private var viewModel = ButtonSimulatorViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: 32) {

                previewSection

                Divider()

                controlsSection
            }
            .padding()
        }
        .navigationTitle("DSButton")
    }
}

private extension ButtonPlaygroundView {

    var previewSection: some View {
        PlaygroundSection(title: "Preview") {
            DSButton(
                viewModel.state == .loading ? "Loading..." : viewModel.title,
                variant: viewModel.variant,
                state: viewModel.state,
                action: {
                    if viewModel.state == .normal {
                        viewModel.simulateLoading()
                    }
                }
            )
        }
    }
}

private extension ButtonPlaygroundView {

    var controlsSection: some View {
        PlaygroundSection(title: "Controls") {
            VStack(spacing: 20) {

                titleField

                variantSelector

                stateSelector
            }
        }
    }
}

private extension ButtonPlaygroundView {

    var titleField: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Title")
                .font(.caption)
                .foregroundColor(.secondary)

            TextField("Button title", text: $viewModel.title)
                .textFieldStyle(.roundedBorder)
        }
    }
}

private extension ButtonPlaygroundView {

    var variantSelector: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Variant")
                .font(.caption)
                .foregroundColor(.secondary)

            Menu {
                ForEach(DSButtonVariant.allCases, id: \.self) { variant in
                    Button(variant.displayName) {
                        viewModel.variant = variant
                    }
                }
            } label: {
                comboBoxLabel(text: viewModel.variant.displayName)
            }
            .accessibilityLabel("Variant seletor")
            .accessibilityValue(viewModel.variant.displayName)
        }
    }
}

private extension ButtonPlaygroundView {

    var stateSelector: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("State")
                .font(.caption)
                .foregroundColor(.secondary)

            Menu {
                ForEach(DSButtonState.allCases, id: \.self) { state in
                    Button(state.displayName) {
                        viewModel.state = state
                    }
                }
            } label: {
                comboBoxLabel(text: viewModel.state.displayName)
            }

            .accessibilityLabel("State seletor")
            .accessibilityValue(viewModel.state.displayName)
        }
    }
}

private extension ButtonPlaygroundView {

    func comboBoxLabel(text: String) -> some View {
        HStack {
            Text(text)
            Spacer()
            Image(systemName: "chevron.down")
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8)
    }
}


