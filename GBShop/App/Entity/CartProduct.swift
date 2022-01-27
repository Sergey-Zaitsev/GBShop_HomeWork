//
//  CartProduct.swift
//  GBShop
//
//  Created by Сергей Зайцев on 19.01.2022.
//

import Foundation

struct CartProduct: Codable {
    let productId: Int
    let productName: String
    let price: Int
    let quantity: Int
    
    enum CodingKeys: String, CodingKey {
        case productId = "id_product"
        case productName = "product_name"
        case price
        case quantity
    }
}
