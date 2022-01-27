//
//  RegistrationRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 06.12.2021.
//

import Foundation
import Alamofire

protocol ProductRequestFactory {
    func getProduct(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<ProductResult>) -> Void
    )
}
