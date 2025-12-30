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
    @State private var isSizeSheetPresented = false
    @State private var isBrandSheetPresented = false


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
        }.sheet(isPresented: $isSizeSheetPresented) {
            sizeBottomSheet
        }.sheet(isPresented: $isBrandSheetPresented) {
            brandBottomSheet
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
                size: viewModel.size,
                variant: viewModel.variant,
                state: viewModel.state,
                theme: viewModel.selectedBrand.buttonTheme
            ) {
                if viewModel.state == .normal {
                    viewModel.simulateLoading()
                }
            }
        }
    }
    
    var brandSelector: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Brand")
                .font(.caption)
                .foregroundColor(.secondary)

            comboBoxLabel(text: viewModel.selectedBrand.displayName)
                .onTapGesture {
                    isBrandSheetPresented = true
                }
        }
    }
    
    var brandBottomSheet: some View {
        SelectionBottomSheet(
            title: "Selecione a Marca",
            items: BrandOption.allCases,
            selected: viewModel.selectedBrand,
            displayName: { $0.displayName }
        ) { selectedBrand in
            viewModel.selectedBrand = selectedBrand
            isBrandSheetPresented = false
        }
    }

    
    
    var controlsSection: some View {
        PlaygroundSection(title: "Playground") {
            VStack(spacing: DSSpacing.value(.lg)) {
                titleField
                variantSelector
                sizeSelector
                stateSelector
                brandSelector
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
    
    var sizeSelector: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Size")
                .font(.caption)
                .foregroundColor(.secondary)

            comboBoxLabel(text: viewModel.size.displayName)
                .onTapGesture {
                    isSizeSheetPresented = true
                }
                .accessibilityLabel("Seletor de tamanho do DSButton")
                .accessibilityValue(viewModel.size.displayName)
        }
    }
    
    var sizeBottomSheet: some View {
        SelectionBottomSheet(
            title: "Selecione o tamanho do DSButton",
            items: DSButtonSize.allCases,
            selected: viewModel.size,
            displayName: { $0.displayName }
        ) { selectedSize in
            viewModel.size = selectedSize
            isSizeSheetPresented = false
        }
    }


}

