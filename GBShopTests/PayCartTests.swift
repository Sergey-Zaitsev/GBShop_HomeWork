//
//  PayCartTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class PayCartTests: XCTestCase {
    func testPayBasket() {
        let requestFactory = RequestFactory()
        let payCartData = requestFactory.makePayCartRequestFactory()
        let testData = TestData()
        let payCartExpectation = expectation(description: "Basked paid")
        
        payCartData.payCart(userId: testData.userId) { response in
            switch response.result {
            case .success(let payCartResponse):
                XCTAssertEqual(payCartResponse.result, 1)
                payCartExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
