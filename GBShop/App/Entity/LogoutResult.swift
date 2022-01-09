//
//  LogoutResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 06.12.2021.
//

import Foundation

struct LogoutResult: Codable {
    let result: Int
}

struct SignUpResult: Codable {
    let result: Int
    let userMessage: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
    }
}
