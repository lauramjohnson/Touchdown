//
//  ContentView.swift
//  Touchdown
//
//  Created by Laura Johnson on 4/23/22.
//

import SwiftUI

struct ContentView: View {
    // MARK:  - property
    @EnvironmentObject var shop: Shop
    
    // MARK:  - body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5))

                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack {
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(height: UIScreen.main.bounds.width / 1.4)
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                                .padding(15)
                            })
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                            
                        }
                    })
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
