//
//  ProductTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class ProductTests: XCTestCase {
    func testProductGetting() {
        let requestFactory = RequestFactory()
        let productData = requestFactory.makeProductRequestFactory()
        let fakeData = TestData()
        let productExpectation = expectation(description: "Got Product")
        
        productData.getProduct(productId: fakeData.productId) { response in
            switch response.result {
            case .success(let productResponse):
                XCTAssertEqual(productResponse.result, 1)
                productExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
