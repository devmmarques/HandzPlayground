//
//  TypographyTokensView.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 26/12/25.
//
import SwiftUI
import HandzDesignSystem

struct TypographyTokensView: View {

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 32) {
                typographyGroup(
                    title: "Display",
                    description: "Used for marketing and high emphasis content",
                    tokens: [
                        (.displayLarge, "Display Large"),
                        (.displayMedium, "Display Medium")
                    ]
                )

                typographyGroup(
                    title: "Headings",
                    description: "Used for section and page titles",
                    tokens: [
                        (.headingLarge, "Heading Large"),
                        (.headingMedium, "Heading Medium"),
                        (.headingSmall, "Heading Small")
                    ]
                )

                typographyGroup(
                    title: "Body",
                    description: "Used for paragraphs and long texts",
                    tokens: [
                        (.bodyLarge, "Body Large"),
                        (.bodyMedium, "Body Medium"),
                        (.bodySmall, "Body Small")
                    ]
                )

                typographyGroup(
                    title: "Labels",
                    description: "Used for supporting and UI text",
                    tokens: [
                        (.labelLarge, "Label Large"),
                        (.labelMedium, "Label Medium"),
                        (.labelSmall, "Label Small")
                    ]
                )

                typographyGroup(
                    title: "Caption",
                    description: "Used for helper and metadata text",
                    tokens: [
                        (.caption, "Caption")
                    ]
                )
            }
            .padding(24)
        }
        .navigationTitle("Typography")
    }

    // MARK: - Group

    private func typographyGroup(
        title: String,
        description: String,
        tokens: [(DSTypographyToken, String)]
    ) -> some View {

        VStack(alignment: .leading, spacing: 16) {

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(DSTypography.font(.headingMedium))
                

                Text(description)
                    .font(DSTypography.font(.bodySmall))
                    .foregroundColor(.secondary)
            }

            VStack(alignment: .leading, spacing: 20) {
                ForEach(tokens, id: \.0) { token, label in
                    typographyRow(token: token, label: label)
                }
            }
            .padding(.top, 8)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.secondarySystemBackground))
        )
    }

    // MARK: - Row

    private func typographyRow(
        token: DSTypographyToken,
        label: String
    ) -> some View {

        VStack(alignment: .leading, spacing: 6) {

            Text(label)
                .font(DSTypography.font(token))

            HStack(spacing: 8) {
                Text(tokenName(token))
                    .font(DSTypography.font(.caption))
                    .foregroundColor(.secondary)

                Spacer()

                Text("Aa")
                    .font(DSTypography.font(token))
                    .foregroundColor(.secondary)
            }
        }
    }

    private func tokenName(_ token: DSTypographyToken) -> String {
        switch token {
        case .displayLarge: return "text.display.large"
        case .displayMedium: return "text.display.medium"
        case .headingLarge: return "text.heading.large"
        case .headingMedium: return "text.heading.medium"
        case .headingSmall: return "text.heading.small"
        case .bodyLarge: return "text.body.large"
        case .bodyMedium: return "text.body.medium"
        case .bodySmall: return "text.body.small"
        case .labelLarge: return "text.label.large"
        case .labelMedium: return "text.label.medium"
        case .labelSmall: return "text.label.small"
        case .caption: return "text.caption"
        }
    }
}
