//
//  SpacingTokensView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
import HandzDesignSystem

struct SpacingTokensView: View {

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: DSSpacing.value(.xl)) {

                Text("Spacing Tokens")
                    .font(.title)
                    .padding(.bottom, DSSpacing.value(.sm))

                ForEach(DSSpacingToken.allCases, id: \.self) { token in
                    SpacingTokenRow(token: token)
                }
            }
            .padding(DSSpacing.value(.lg))
        }
        .navigationTitle("Spacing")
    }
}
