//
//  CatalogResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 13.12.2021.
//

import Foundation
struct CatalogResult: Codable {
    let id: Int
    let name: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "product_id"
        case name = "product_name"
        case price
    }
}
