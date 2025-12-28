//
//  PlaygroundHomeView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

struct PlaygroundHomeView: View {

    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    TokensHomeView()
                } label: {
                    Label("Design Tokens", systemImage: "circle.grid.3x3.fill")
                }

                NavigationLink {
                    ComponentsHomeView()
                } label: {
                    Label("Components", systemImage: "square.stack.3d.up.fill")
                }
            }
            .navigationTitle("Design System")
        }
    }
}
