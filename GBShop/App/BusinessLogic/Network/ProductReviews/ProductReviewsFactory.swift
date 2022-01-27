//
//  ProductReviewsFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol ProductReviewsRequestFactory {
    func getReviews(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<ProductReviewsResult>) -> Void
    )
}
