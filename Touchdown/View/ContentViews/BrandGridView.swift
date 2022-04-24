//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Laura Johnson on 4/23/22.
//

import SwiftUI

struct BrandGridView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true, content: {
            LazyHGrid(rows: gridLayout, spacing: coloumnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(15)
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
