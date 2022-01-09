//
//  ProductReviewsResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import Foundation

struct ProductReviewsResult: Codable {
    let pageNumber: Int
    let reviews: [Review]
    
    enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case reviews
    }
}
