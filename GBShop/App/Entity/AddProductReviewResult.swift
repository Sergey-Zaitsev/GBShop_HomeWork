//
//  AddProductReviewResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import Foundation

struct AddProductReviewResult: Codable {
    let result: Int
    let userMessage: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
    }
}
