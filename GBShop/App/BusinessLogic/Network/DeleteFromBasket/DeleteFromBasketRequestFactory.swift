//
//  DeleteFromBasketRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol DeleteFromBasketRequestFactory {
    func deleteFromBasket(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteFromBasketResult>) -> Void
    )
}
