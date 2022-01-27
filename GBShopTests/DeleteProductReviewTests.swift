//
//  DeleteProductReviewTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class DeleteProductReviewTests: XCTestCase {
    func testDeleteProductReview() {
        let requestFactory = RequestFactory()
        let deleteReviewData = requestFactory.makeDeleteProductReviewRequestFactory()
        let fakeData = TestData()
        let deleteReviewExpectation = expectation(description: "Review approved")
        
        deleteReviewData.deleteReview(commentId: fakeData.commentId) { response in
            switch response.result {
            case .success(let deleteReviewResponse):
                XCTAssertEqual(deleteReviewResponse.result, 1)
                deleteReviewExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
