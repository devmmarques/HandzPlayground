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

    @State private var isVariantSheetPresented = false
    @State private var isStateSheetPresented = false

    var body: some View {
        ScrollView {
            VStack(spacing: DSSpacing.value(.xl)) {
                previewSection
                Divider()
                controlsSection
            }
            .padding()
        }
        .navigationTitle("DSButton")
        .sheet(isPresented: $isVariantSheetPresented) {
            variantBottomSheet
        }
        .sheet(isPresented: $isStateSheetPresented) {
            stateBottomSheet
        }
    }
    
    var variantSelector: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Variant")
                .font(.caption)
                .foregroundColor(.secondary)

            comboBoxLabel(text: viewModel.variant.displayName)
                .onTapGesture {
                    isVariantSheetPresented = true
                }
                .accessibilityLabel("Seletor da variação do DSButton")
                .accessibilityValue(viewModel.variant.displayName)
        }
    }
    
    var stateSelector: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("State")
                .font(.caption)
                .foregroundColor(.secondary)

            comboBoxLabel(text: viewModel.state.displayName)
                .onTapGesture {
                    isStateSheetPresented = true
                }
                .accessibilityLabel("Seletor do estado do DSButton")
                .accessibilityValue(viewModel.state.displayName)
        }
    }

    var variantBottomSheet: some View {
        SelectionBottomSheet(
            title: "Selecione a variação do DSButton",
            items: DSButtonVariant.allCases,
            selected: viewModel.variant,
            displayName: { $0.displayName }
        ) { selectedVariant in
            viewModel.variant = selectedVariant
            isVariantSheetPresented = false
        }
    }
    
    var stateBottomSheet: some View {
        SelectionBottomSheet(
            title: "Selecione o Estado do DSButton",
            items: DSButtonState.allCases,
            selected: viewModel.state,
            displayName: { $0.displayName }
        ) { selectedState in
            viewModel.state = selectedState
            isStateSheetPresented = false
        }
    }
    
    var previewSection: some View {
        PlaygroundSection(title: "Preview") {
            DSButton(
                viewModel.state == .loading ? "Carregando..." : viewModel.title,
                variant: viewModel.variant,
                state: viewModel.state
            ) {
                if viewModel.state == .normal {
                    viewModel.simulateLoading()
                }
            }
        }
    }
    
    
    var controlsSection: some View {
        PlaygroundSection(title: "Playground") {
            VStack(spacing: DSSpacing.value(.lg)) {
                titleField
                variantSelector
                stateSelector
            }
        }
    }
    
    var titleField: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Título")
                .font(.caption)
                .foregroundColor(.secondary)

            TextField("Button title", text: $viewModel.title)
                .textFieldStyle(.roundedBorder)
        }
    }
    
    func comboBoxLabel(text: String) -> some View {
        HStack {
            Text(text)
            Spacer()
            Image(systemName: "chevron.down")
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(DSRadius.value(.sm))
    }
}

