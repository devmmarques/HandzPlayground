//
//  SelectionBottomSheet.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 28/12/25.
//
import SwiftUI

struct SelectionBottomSheet<Item: Hashable>: View {

    let title: String
    let items: [Item]
    let selected: Item
    let displayName: (Item) -> String
    let onSelect: (Item) -> Void

    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    Button {
                        onSelect(item)
                    } label: {
                        HStack {
                            Text(displayName(item))
                            Spacer()
                            if item == selected {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.accentColor)
                            }
                        }
                    }
                }
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
        }
        .presentationDetents([.medium])
    }
}
