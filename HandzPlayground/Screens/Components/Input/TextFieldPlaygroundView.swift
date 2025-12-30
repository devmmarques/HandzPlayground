//
//  TextFieldPlaygroundView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 29/12/25.
//
import SwiftUI
import HandzDesignSystem

struct TextFieldPlaygroundView: View {

    @StateObject private var viewModel = TextFieldPlaygroundViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: DSSpacing.value(.xl)) {

                previewSection

                Divider()

                controlsSection
            }
            .padding()
        }
        .navigationTitle("DSTextField")
    }
}

private extension TextFieldPlaygroundView {

    var previewSection: some View {
        PlaygroundSection(title: "Preview") {
            DSTextField(
                label: viewModel.label,
                text: $viewModel.text,
                helperText: viewModel.errorText == nil ? viewModel.helperText : nil,
                errorText: viewModel.errorText,
                isEnabled: viewModel.isEnabled,
                theme: viewModel.selectedTheme.theme
            )
            .onChange { value in
                print("onChange:", value)
            }
            .onFocusChange { focused in
                print("focused:", focused)
            }
            .onSubmit {
                print("submit")
            }
        }
    }
    
    var textFieldControl: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Text")
                .font(.caption)

            TextField("Digite algo", text: $viewModel.text)
                .textFieldStyle(.roundedBorder)
        }
    }
    
    var labelControl: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Label")
                .font(.caption)

            TextField("Label", text: $viewModel.label)
                .textFieldStyle(.roundedBorder)
        }
    }
    
    var helperControl: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Helper text")
                .font(.caption)

            TextField("Helper", text: $viewModel.helperText)
                .textFieldStyle(.roundedBorder)
        }
    }

    var errorControl: some View {
        Toggle("Show error", isOn: Binding(
            get: { viewModel.errorText != nil },
            set: { showError in
                viewModel.errorText = showError ? "Mensagem de erro" : nil
            }
        ))
    }

    var enabledControl: some View {
        Toggle("Enabled", isOn: $viewModel.isEnabled)
    }
    
    var themeSelector: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {
            Text("Theme")
                .font(.caption)

            Menu {
                ForEach(TextFieldThemeType.allCases, id: \.self) { theme in
                    Button(theme.title) {
                        viewModel.selectedTheme = theme
                    }
                }
            } label: {
                comboBoxLabel(text: viewModel.selectedTheme.title)
            }
        }
    }

    private func comboBoxLabel(text: String) -> some View {
        HStack {
            Text(text)
                .foregroundColor(.primary)

            Spacer()

            Image(systemName: "chevron.down")
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(DSRadius.value(.sm))
    }

}

private extension TextFieldPlaygroundView {

    var controlsSection: some View {
        PlaygroundSection(title: "Controls") {
            VStack(spacing: DSSpacing.value(.lg)) {

//                textFieldControl
                labelControl
                helperControl
                errorControl
                enabledControl
                themeSelector
            }
        }
    }
}
