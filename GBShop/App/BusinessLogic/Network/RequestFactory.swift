//
//  RequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 06.12.2021.
//

import Foundation
import Alamofire

class RequestFactory {
    
    func makeErrorParser() -> AbstractErrorParser {
        return ErrorParser()
    }
    
    lazy var commonSession: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        
        return manager
    }()
    
    let sessionQueue = DispatchQueue.global(qos: .utility)
    
    func makeAuthRequestFatory() -> AuthRequestFactory {
        let errorParser = makeErrorParser()
        
        return Auth(baseURL: UrlResources.baseURL, errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeProductRequestFatory() -> ProductRequestFactory {
        let errorParser = makeErrorParser()
        
        return Product(baseURL: UrlResources.baseURL, errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeReviewRequestFatory() -> ReviewRequestFactory {
        let errorParser = makeErrorParser()
        
        return Review(baseURL: UrlResources.baseURL, errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeCartRequestFatory() -> CartRequestFactory {
        let errorParser = makeErrorParser()
        
        return Cart(baseURL: UrlResources.baseURL, errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
}
