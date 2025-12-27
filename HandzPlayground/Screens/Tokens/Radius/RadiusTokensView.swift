//
//  RadiusTokensView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
import HandzDesignSystem

struct RadiusTokensView: View {

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.value(.lg)) {

                Text("Radius Tokens")
                    .font(.largeTitle)
                    .padding(.bottom, DSSpacing.value(.sm))

                ForEach(DSRadiusToken.allCases, id: \.self) { token in
                    RadiusTokenCard(token: token)
                }
            }
            .padding(DSSpacing.value(.lg))
        }
        .navigationTitle("Radius")
    }
}
