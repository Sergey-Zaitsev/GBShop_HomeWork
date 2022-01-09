//
//  LogOutRequestFactory.swift
//  GBShop
//
//  Created by Сергей Зайцев on 07.01.2022.
//

import Foundation
import Alamofire

protocol LogOutRequestFactory {
    func logOut(
        userId: Int,
        completionHandler: @escaping (AFDataResponse<LogOutResult>) -> Void
    )
}
