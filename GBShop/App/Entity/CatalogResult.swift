//
//  CatalogResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 13.12.2021.
//

import Foundation

struct CatalogResult: Codable {
    let pageNumber: Int
    let products: [CatalogProduct]
    
    enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case products
    }
}
