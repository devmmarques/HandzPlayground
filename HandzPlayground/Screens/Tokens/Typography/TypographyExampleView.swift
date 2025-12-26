//
//  TypographyExampleView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//
import SwiftUI
import HandzDesignSystem

struct TypographyExampleView: View {

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                Text("Product Title")
                    .font(DSTypography.font(.displayMedium))

                Text("Section Title")
                    .font(DSTypography.font(.headingLarge))

                Text("""
                This is an example of body text using the Design System.
                The app does not know which font or size is being used.
                """)
                .font(DSTypography.font(.bodyMedium))

                Text("Helper label")
                    .font(DSTypography.font(.labelSmall))
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .navigationTitle("Typography Example")
    }
}
