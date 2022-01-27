//
//  LoginRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol LogInRequestFactory {
    func logIn(
        login: String,
        password: String,
        completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void
    )
}

