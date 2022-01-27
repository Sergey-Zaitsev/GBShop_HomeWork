//
//  AddToCartRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol AddToCartRequestFactory {
    func addToCart(
        productId: Int,
        quantity: Int,
        completionHandler: @escaping (AFDataResponse<AddToCartResult>) -> Void
    )
}
