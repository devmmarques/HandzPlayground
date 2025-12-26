//
//  ColorTokensView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI
import HandzDesignSystem

struct ColorTokensView: View {
    
    let sections: [ColorTokenSection: [ColorTokenItem]] = [
        .fill: [
            .init(name: "color.fill.main", color: DSColor.Fill.main),
            .init(name: "color.fill.secondary", color: DSColor.Fill.secondary),
            .init(name: "color.fill.neutral.lowest", color: DSColor.Fill.neutralLowest),
            .init(name: "color.fill.neutral.low", color: DSColor.Fill.neutralLow),
            .init(name: "color.fill.neutral.high", color: DSColor.Fill.neutralHigh),
            .init(name: "color.fill.success", color: DSColor.Fill.success),
            .init(name: "color.fill.warning", color: DSColor.Fill.warning),
            .init(name: "fill.error", color: DSColor.Fill.error)
        ],
        .text: [
            .init(name: "color.text.primary", color: DSColor.Text.primary),
            .init(name: "color.text.secondary", color: DSColor.Text.secondary),
            .init(name: "color.text.disabled", color: DSColor.Text.disabled),
            .init(name: "color.text.onFill", color: DSColor.Text.onFill),
            .init(name: "color.text.inverse", color: DSColor.Text.onFill)
        ],
        .border: [
            .init(name: "color.border.default", color: DSColor.Border.defaultColor),
            .init(name: "color.border.focus", color: DSColor.Border.focus),
            .init(name: "color.border.subtle", color: DSColor.Border.subtle),
            .init(name: "color.border.strong", color: DSColor.Border.strong)
        ],
        .icon: [
            .init(name: "color.icon.primary", color: DSColor.Icon.primary),
            .init(name: "color.icon.secondary", color: DSColor.Icon.secondary),
            .init(name: "color.icon.disabled", color: DSColor.Icon.disabled),
            .init(name: "color.icon.inverse", color: DSColor.Icon.inverse)
        ]
    ]

    var body: some View {
        List {
            ForEach(ColorTokenSection.allCases) { section in
                if let items = sections[section] {
                    Section(section.rawValue) {
                        ForEach(items) { item in
                            ColorRowView(item: item)
                        }
                    }
                }
            }
        }
        .navigationTitle("Colors")
    }
}
