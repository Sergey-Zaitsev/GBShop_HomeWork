//
//  CartRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 18.12.2021.
//

import Foundation
import Alamofire

protocol CartRequestFactory {
    func add(userID: Int, productID: Int, quantity: Int, completionHandler: @escaping (AFDataResponse<AddCartResult>) -> Void)
    func get(userID: Int, completionHandler: @escaping (AFDataResponse<GetCartResult>) -> Void)
    func remove(userID: Int, productID: Int, completionHandler: @escaping (AFDataResponse<RemoveCartResult>) -> Void)
    func pay(userID: Int, money: Int, completionHandler: @escaping (AFDataResponse<PayCartResult>) -> Void)
}
