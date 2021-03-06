//
//  AddCartResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 18.12.2021.
//

import Foundation

struct AddCartResult: Codable {
    let result: Int
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case errorMessage = "error_message"
    }
}
