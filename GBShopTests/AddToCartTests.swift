//
//  AddToCartTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class AddToCartTests: XCTestCase {
    func testAddToCart() {
        let requestFactory = RequestFactory()
        let addToCartData = requestFactory.makeAddToCartRequestFactory()
        let testData = TestData()
        let addToCartExpectation = expectation(description: "Product added to Cart")
        
        addToCartData.addToCart(productId: testData.productId, quantity: testData.quantity) { response in
            switch response.result {
            case .success(let addToCartResponse):
                XCTAssertEqual(addToCartResponse.result, 1)
                addToCartExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
