//
//  GetCartResult.swift
//  GBShop
//
//  Created by Сергей Зайцев on 19.01.2022.
//

import Foundation

struct GetCartResult: Codable {
    let amount: Int
    let countGoods: Int
    let contents: [CartProduct]
}

