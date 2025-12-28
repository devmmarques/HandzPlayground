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
                NavigationLink {
                    ColorTokensView()
                } label: {
                    Label("Colors", systemImage: "paintpalette.fill")
                }

                NavigationLink {
                    TypographyTokensView()
                } label: {
                    Label("Typography", systemImage: "textformat.size")
                }

                NavigationLink {
                    SpacingTokensView()
                } label: {
                    Label("Spacing", systemImage: "arrow.left.and.right")
                }

                NavigationLink {
                    RadiusTokensView()
                } label: {
                    Label("Radius", systemImage: "square.on.circle")
                }
            }
            .navigationTitle("Design Tokens")
        }
    }
}
