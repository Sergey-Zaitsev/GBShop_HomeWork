//
//  ApproveProductReviewRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol ApproveProductReviewRequestFactory {
    func approveReview(
        commentId: Int,
        completionHandler: @escaping (AFDataResponse<ApproveProductReviewResult>) -> Void
    )
}
