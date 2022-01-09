//
//  LogIn.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

class LogIn: AbstractRequestFactory {
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

extension LogIn: LogInRequestFactory {
    func logIn(
        login: String,
        password: String,
        completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void
    ) {
        let requestModel = LogIn(baseUrl: baseUrl, login: login, password: password)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension LogIn {
    struct LogIn: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "login"
        
        let login: String
        let password: String
        var parameters: Parameters? {
            [
                "username": login,
                "password": password
            ]
        }
    }
}

