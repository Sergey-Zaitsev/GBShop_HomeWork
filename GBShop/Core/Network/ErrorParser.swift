//
//  ErrorParser.swift
//  GBShop
//
//  Created by Сергей Зайцев on 06.12.2021.
//

import Foundation

class ErrorParser: AbstractErrorParser {
    func parse(_ result: Error) -> Error {
        result
    }
    
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error? {
        error
    }
}
