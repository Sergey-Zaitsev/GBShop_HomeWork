//
//  AddReviewResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 14.12.2021.
//

import Foundation

struct AddReviewResult: Codable {
    let result: Int
    let userMessage: String?
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
        case errorMessage = "error_message"
    }
}
