//
//  SignUpRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol SignUpRequestFactory {
    func signUp(
        userId: Int,
        login: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        bio: String,
        completionHandler: @escaping (AFDataResponse<SignUpResult>) -> Void
    )
}

