//
//  AddToBasketRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol AddToBasketRequestFactory {
    func addToBasket(
        productId: Int,
        quantity: Int,
        completionHandler: @escaping (AFDataResponse<AddToBasketResult>) -> Void
    )
}
