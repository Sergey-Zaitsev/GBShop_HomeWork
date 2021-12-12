//
//  RegistrationRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 06.12.2021.
//

import Foundation
import Alamofire

protocol ProductRequestFactory {
    func catalog(completionHandler: @escaping (AFDataResponse<[CatalogResult]>) -> Void)
    func product(by id: Int, completionHandler: @escaping (AFDataResponse<ProductResult>) -> Void)
}
