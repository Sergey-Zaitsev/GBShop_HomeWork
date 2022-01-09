//
//  CatalogProduct.swift
//  GBShop
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import Foundation

struct CatalogProduct: Codable {
    let productId: Int
    let productName: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case productId = "id_product"
        case productName = "product_name"
        case price
    }
}
