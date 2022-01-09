//
//  RegistrationRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 06.12.2021.
//

import Foundation
import Alamofire

protocol RegistrationRequestFactory {
    func register(
        userId: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        bio: String,
        completionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void
    )
    
    func changeRegistrationRecord(
        userId: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        bio: String,
        completionHandler: @escaping (AFDataResponse<RegistrationChangeResult>) -> Void
    )
}
