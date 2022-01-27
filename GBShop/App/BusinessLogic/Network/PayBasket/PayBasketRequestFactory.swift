//
//  PayBasketRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol PayBasketRequestFactory {
    func payBasket(
        userId: Int,
        completionHandler: @escaping (AFDataResponse<PayBasketResult>) -> Void
    )
}
