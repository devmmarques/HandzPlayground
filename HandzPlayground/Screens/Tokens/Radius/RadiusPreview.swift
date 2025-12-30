//
//  RadiusPreview.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
import HandzDesignSystem

struct RadiusPreview: View {

    let radius: CGFloat

    var body: some View {
        HStack(spacing: DSSpacing.value(.md)) {

            previewBox(label: "Card")
            previewBox(label: "Button")
        }
    }

    private func previewBox(label: String) -> some View {
        Text(label)
            .font(.caption)
            .padding(DSSpacing.value(.sm))
            .frame(width: 80, height: 50)
            .background(Color.blue.opacity(0.2))
            .cornerRadius(radius)
    }
}
