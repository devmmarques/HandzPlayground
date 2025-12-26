//
//  TokenSection.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//

enum ColorTokenSection: String, CaseIterable, Identifiable {
    case fill = "Fill"
    case text = "Text"
    case border = "Border"
    case icon = "Icon"

    var id: String { rawValue }
}
