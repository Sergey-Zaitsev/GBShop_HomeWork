//
//  LogInTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class LogInTests: XCTestCase {
    func testLogIn() {
        let requestFactory = RequestFactory()
        let logIn = requestFactory.makeLogInRequestFatory()
        let fakeData = TestData()
        let logedInExpectation = expectation(description: "Logged In")
        
        logIn.logIn(login: fakeData.login,
                    password: fakeData.password) { response in
            switch response.result {
            case .success(let login):
                XCTAssertEqual(login.user.id, 123)
                logedInExpectation.fulfill()
                
            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}
