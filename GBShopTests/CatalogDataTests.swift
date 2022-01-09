//
//  CatalogDataTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class CatalogDataTests: XCTestCase {
    func testCatalogDataGetting() {
        let requestFactory = RequestFactory()
        let catalogData = requestFactory.makeCatalogRequestFactory()
        let fakeData = TestData()
        let getCatalogExpectation = expectation(description: "Got Catalog")
        
        catalogData.getCatalog(pageNumber: fakeData.pageNumber,
                               categoryId: fakeData.categoryId) { response in
            switch response.result {
            case .success(let catalogResponse):
                XCTAssertEqual(catalogResponse.products[0].productId, 123)
                getCatalogExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
