//
//  GetCartTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 20.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class GetBasketTests: XCTestCase {
    func testGetBasket() {
        let requestFactory = RequestFactory()
        let getCartData = requestFactory.makeGetCartRequestFactory()
        let testData = TestData()
        let getCartExpectation = expectation(description: "Basked paid")
        
        getCartData.getCart(userId: testData.userId) { response in
            switch response.result {
            case .success(let getBasketResponse):
                XCTAssertEqual(getBasketResponse.amount, 46600)
                getCartExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
