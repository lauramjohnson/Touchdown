//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Laura Johnson on 4/23/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
