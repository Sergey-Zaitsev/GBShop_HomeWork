//
//  Review.swift
//  GBShop
//
//  Created by Сергей Зайцев on 14.12.2021.
//

import Foundation

struct Review: Codable {
    let commentId: Int
    let userId: Int
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case commentId = "id_comment"
        case userId = "id_user"
        case text
    }
}
