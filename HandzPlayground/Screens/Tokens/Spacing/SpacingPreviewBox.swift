
//
//  SpacingPreviewBox.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

struct SpacingPreviewBox: View {

    let value: CGFloat

    var body: some View {
        HStack(spacing: value) {
            previewItem
            previewItem
            previewItem
        }
        .padding(value)
        .background(Color.blue.opacity(0.1))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.blue.opacity(0.3))
        )
    }

    private var previewItem: some View {
        RoundedRectangle(cornerRadius: 4)
            .fill(Color.blue)
            .frame(width: 20, height: 20)
    }
}
