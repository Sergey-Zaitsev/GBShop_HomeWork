//
//  DeleteProductReviewRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol DeleteProductReviewRequestFactory {
    func deleteReview(
        commentId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteProductReviewResult>) -> Void
    )
}
