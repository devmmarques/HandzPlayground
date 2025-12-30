//
//  ComponentsHomeView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

struct ComponentsHomeView: View {

    var body: some View {
        List {
            NavigationLink {
                ButtonPlaygroundView()
            } label: {
                Label("DSButton", systemImage: "rectangle.and.hand.point.up.left.fill")
            }

            NavigationLink {
                TextFieldPlaygroundView()
            } label: {
                Label("DSTextField", systemImage: "rectangle.and.pencil.and.ellipsis")
            }

            Label("Mais componentes...", systemImage: "ellipsis")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Components")
    }
}

