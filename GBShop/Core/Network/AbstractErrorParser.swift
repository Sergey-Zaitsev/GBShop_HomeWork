//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by Сергей Зайцев on 06.12.2021.
//

import Foundation

protocol AbstractErrorParser {
    func parse(_ result: Error) -> Error
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
