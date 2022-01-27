//
//  DeleteFromCartRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol DeleteFromCartRequestFactory {
    func deleteFromCart(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteFromCartResult>) -> Void
    )
}
