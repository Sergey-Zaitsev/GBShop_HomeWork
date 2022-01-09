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
        ErrorParser()
    }
    
    lazy var commonSession: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        return manager
    }()
    
    let sessionQueue = DispatchQueue.global(qos: .default)
    
    func makeLogInRequestFatory() -> LogInRequestFactory {
        let errorParser = makeErrorParser()
        return LogIn(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeSignUpRequestFactory() -> SignUpRequestFactory {
        let errorParser = makeErrorParser()
        return SignUp(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeChangeUserDataRequestFactory() -> ChangeUserDataRequestFactory {
        let errorParser = makeErrorParser()
        return ChangeUserData(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeLogOutRequestFactory() -> LogOutRequestFactory {
        let errorParser = makeErrorParser()
        return LogOut(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeCatalogRequestFactory() -> CatalogRequestFactory {
        let errorParser = makeErrorParser()
        return Catalog(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeProductRequestFactory() -> ProductRequestFactory {
        let errorParser = makeErrorParser()
        return Product(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeProductReviewsRequestFactory() -> ProductReviewsRequestFactory {
        let errorParser = makeErrorParser()
        return ProductReviews(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeAddProductReviewRequestFactory() -> AddProductReviewRequestFactory {
        let errorParser = makeErrorParser()
        return AddProductReview(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }

    func makeApproveProductReviewRequestFactory() -> ApproveProductReviewRequestFactory {
        let errorParser = makeErrorParser()
        return ApproveProductReview(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }

    func makeDeleteProductReviewRequestFactory() -> DeleteProductReviewRequestFactory {
        let errorParser = makeErrorParser()
        return DeleteProductReview(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makeAddToBasketRequestFactory() -> AddToBasketRequestFactory {
        let errorParser = makeErrorParser()
        return AddToBasket(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }

    func makeDeleteFromBasketRequestFactory() -> DeleteFromBasketRequestFactory {
        let errorParser = makeErrorParser()
        return DeleteFromBasket(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
    
    func makePayBasketRequestFactory() -> PayBasketRequestFactory {
        let errorParser = makeErrorParser()
        return PayBasket(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue, baseUrl: UrlResources.baseURL)
    }
}
