//
//  RadiusTokenCard.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
import HandzDesignSystem

struct RadiusTokenCard: View {

    let token: DSRadiusToken

    private var radius: CGFloat {
        DSRadius.value(token)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.sm)) {

            HStack {
                Text("radius.\(tokenName)")
                    .font(.headline)

                Spacer()

                Text("\(Int(radius)) pt")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            RadiusPreview(radius: radius)
        }
        .padding(DSSpacing.value(.md))
        .background(Color(.secondarySystemBackground))
        .cornerRadius(DSRadius.value(.md))
    }

    private var tokenName: String {
        String(describing: token)
    }
}
