//
//  ColorRowView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI
import HandzDesignSystem

struct ColorRowView: View {

    let item: ColorTokenItem

    var body: some View {
        HStack(spacing: DSSpacing.value(.md)) {
            RoundedRectangle(cornerRadius: 8)
                .fill(item.color)
                .frame(width: 44, height: 44)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.black.opacity(0.1))
                )

            Text(item.name)
                .font(.system(size: 14, weight: .medium))

            Spacer()
        }
        .padding(.vertical, 4)
    }
}
