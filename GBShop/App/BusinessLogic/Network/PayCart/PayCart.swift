//
//  PayCart.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

class PayCart: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl: URL
    
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue,
        baseUrl: URL
    ) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
        self.baseUrl = baseUrl
    }
}

extension PayCart: PayCartRequestFactory {
    func payCart(
        userId: Int,
        completionHandler: @escaping (AFDataResponse<PayCartResult>) -> Void
    ) {
        let requestModel = PayCart(baseUrl: baseUrl, userId: userId)
        self.request(request: requestModel, completionHandler: completionHandler)
        
        clearBasket()
    }
    
    private func clearBasket() {}
}

extension PayCart {
    struct PayCart: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "pay_basket"
        
        let userId: Int
        var parameters: Parameters? {
            [
                "id_user": userId
            ]
        }
    }
}
