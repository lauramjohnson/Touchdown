//
//  ProductModel.swift
//  Touchdown
//
//  Created by Laura Johnson on 4/23/22.
//

import Foundation

struct Product: Codable, Identifiable {
    let id, price: Int
    let name, image, description: String
    let color: [Double]
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }

    var formattedPrice: String { return "$\(price)" }
}
