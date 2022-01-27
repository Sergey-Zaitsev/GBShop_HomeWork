//
//  GetCartRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 19.01.2022.
//

import Foundation
import Alamofire

protocol GetCartRequestFactory {
    func getCart(
        userId: Int,
        completionHandler: @escaping (AFDataResponse<GetCartResult>) -> Void
    )
}
