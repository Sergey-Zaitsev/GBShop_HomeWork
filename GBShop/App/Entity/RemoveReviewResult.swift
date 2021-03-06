//
//  RemoveReviewResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 14.12.2021.
//

import Foundation

struct RemoveReviewResult: Codable {
    let result: Int
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case errorMessage = "error_message"
    }
}
