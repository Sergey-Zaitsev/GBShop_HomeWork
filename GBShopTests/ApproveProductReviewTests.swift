//
//  ApproveProductReviewTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class ApproveProductReviewTests: XCTestCase {
    func testApproveProductReview() {
        let requestFactory = RequestFactory()
        let approveReviewData = requestFactory.makeApproveProductReviewRequestFactory()
        let fakeData = TestData()
        let approveReviewExpectation = expectation(description: "Review approved")
        
        approveReviewData.approveReview(commentId: fakeData.commentId) { response in
            switch response.result {
            case .success(let approveReviewResponse):
                XCTAssertEqual(approveReviewResponse.result, 1)
                approveReviewExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
