//
//  GBShopTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 29.11.2021.
//

import XCTest
import Alamofire
@testable import GBShop

struct PostStub: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

enum ApiErrorStub: Error {
    case fatalError
}

struct ErrorParserStub: AbstractErrorParser {
    func parse(_ result: Error) -> Error {
        return ApiErrorStub.fatalError
    }
    
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error? {
        return error
    }
}


class GBShopTests: XCTestCase {
    let expectation = XCTestExpectation(description: "Download https://failUrl")
    var errorParser: ErrorParserStub!
    override func setUpWithError() throws {
        super.setUp()
        errorParser = ErrorParserStub()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        errorParser = nil
    }
    
    func testShouldDownloadAndParse() {
        AF
            .request("https://jsonplaceholder.typicode.com/posts/1")
            .responseCodable(errorParser: errorParser) { [weak self] (response: AFDataResponse<PostStub>) in
                switch response.result {
                case .success(_): break
                case .failure:
                    XCTFail()
                }
                self?.expectation.fulfill()
            }
        wait(for: [expectation], timeout: 10.0)
        }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}


