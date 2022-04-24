//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Laura Johnson on 4/23/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: coloumnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(text: "Categories", degrees: -90),
                    footer: SectionView(text: "Categories", degrees: 90)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)

                    }
                }

            })
            .frame(height: 170)
            .padding(.horizontal, 15)
        })
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
