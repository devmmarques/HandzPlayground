//
//  PlaygroundSection.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

struct PlaygroundSection<Content: View>: View {

    let title: String
    let content: Content

    init(
        title: String,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)

            content
        }
    }
}
