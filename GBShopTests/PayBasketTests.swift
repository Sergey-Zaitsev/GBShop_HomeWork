//
//  PayBasketTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class PayBasketTests: XCTestCase {
    func testPayBasket() {
        let requestFactory = RequestFactory()
        let payBasketData = requestFactory.makePayBasketRequestFactory()
        let fakeData = TestData()
        let payBasketExpectation = expectation(description: "Basked paid")
        
        payBasketData.payBasket(userId: fakeData.userId) { response in
            switch response.result {
            case .success(let payBasketResponse):
                XCTAssertEqual(payBasketResponse.result, 1)
                payBasketExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}

