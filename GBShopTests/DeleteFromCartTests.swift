//
//  DeleteFromCartTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class DeleteFromCartTests: XCTestCase {
    func testDeleteFromCart() {
        let requestFactory = RequestFactory()
        let deleteFromCartData = requestFactory.makeDeleteFromCartRequestFactory()
        let testData = TestData()
        let deleteFromCartExpectation = expectation(description: "Product deleted from Cart")
        
        deleteFromCartData.deleteFromCart(productId: testData.productId) { response in
            switch response.result {
            case .success(let deleteFromCartResponse):
                XCTAssertEqual(deleteFromCartResponse.result, 1)
                deleteFromCartExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}

