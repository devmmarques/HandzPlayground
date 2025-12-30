//
//  SpacingTokenRow.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
import HandzDesignSystem

struct SpacingTokenRow: View {

    let token: DSSpacingToken

    private var spacingValue: CGFloat {
        DSSpacing.value(token)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {

            HStack {
                Text(tokenName)
                    .font(.headline)

                Spacer()

                Text("\(Int(spacingValue)) pt")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            SpacingPreviewBox(value: spacingValue)
        }
        .padding(DSSpacing.value(.md))
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }

    private var tokenName: String {
        "spacing.\(String(describing: token))"
    }
}
