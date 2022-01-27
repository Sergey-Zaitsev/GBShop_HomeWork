//
//  AddProductReviewRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol AddProductReviewRequestFactory {
    func addReview(
        userId: Int,
        text: String,
        completionHandler: @escaping (AFDataResponse<AddProductReviewResult>) -> Void
    )
}
