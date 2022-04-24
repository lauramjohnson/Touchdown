//
//  Shop.swift
//  Touchdown
//
//  Created by Laura Johnson on 4/24/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
