//
//  TokensHomeView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI

struct TokensHomeView: View {

    var body: some View {
        NavigationStack {
            List {
                NavigationLink("🎨 Colors") {
                    ColorTokensView()
                }

                Label("Typography", systemImage: "textformat")
                    .foregroundColor(.secondary)

                Label("Spacing", systemImage: "arrow.left.and.right")
                    .foregroundColor(.secondary)

                Label("Radius", systemImage: "square.on.circle")
                    .foregroundColor(.secondary)
            }
            .navigationTitle("Design Tokens")
        }
    }
}
