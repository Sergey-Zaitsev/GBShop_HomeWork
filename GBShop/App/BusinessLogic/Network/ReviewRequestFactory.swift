//
//  ReviewRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 14.12.2021.
//

import Foundation
import Alamofire

protocol ReviewRequestFactory {
    func add(userID: Int, productID: Int, text: String, completionHandler: @escaping (AFDataResponse<AddReviewResult>) -> Void)
    func remove(commentID: String, completionHandler: @escaping (AFDataResponse<RemoveReviewResult>) -> Void)
    func get(productID: Int, completionHandler: @escaping (AFDataResponse<Array<ReviewResult>>) -> Void)
}
