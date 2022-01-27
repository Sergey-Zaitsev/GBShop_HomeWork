//
//  AddProductReviewTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class AddProductReviewTests: XCTestCase {
    func testAddProductReview() {
        let requestFactory = RequestFactory()
        let addReviewData = requestFactory.makeAddProductReviewRequestFactory()
        let fakeData = TestData()
        let addReviewExpectation = expectation(description: "Review added")
        
        addReviewData.addReview(userId: fakeData.userId,
                                text: fakeData.reviewText) { response in
            switch response.result {
            case .success(let addReviewResponse):
                XCTAssertEqual(addReviewResponse.result, 1)
                addReviewExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
