//
//  PayCartRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol PayCartRequestFactory {
    func payCart(
        userId: Int,
        completionHandler: @escaping (AFDataResponse<PayCartResult>) -> Void
    )
}
