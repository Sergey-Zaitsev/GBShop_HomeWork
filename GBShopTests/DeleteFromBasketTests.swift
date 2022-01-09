//
//  DeleteFromBasketTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class DeleteFromBasketTests: XCTestCase {
    func testDeleteFromBasket() {
        let requestFactory = RequestFactory()
        let deleteFromBasketData = requestFactory.makeDeleteFromBasketRequestFactory()
        let fakeData = TestData()
        let deleteFromBasketExpectation = expectation(description: "Product deleted from Basket")
        
        deleteFromBasketData.deleteFromBasket(productId: fakeData.productId) { response in
            switch response.result {
            case .success(let deleteFromResponse):
                XCTAssertEqual(deleteFromResponse.result, 1)
                deleteFromBasketExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}

