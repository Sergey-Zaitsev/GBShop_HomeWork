//
//  SignUpTests.swift
//  GBShopTests
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import XCTest
import Alamofire
@testable import GBShop

class SignUpTests: XCTestCase {
    func testSignUp() {
        let requestFactory = RequestFactory()
        let signUp = requestFactory.makeSignUpRequestFactory()
        let testData = TestData()
        let registeredExpectation = expectation(description: "Registered")
        
        signUp.signUp(userId: testData.userId,
                      login: testData.login,
                      password: testData.password,
                      email: testData.email,
                      gender: testData.gender,
                      creditCard: testData.creditCard,
                      bio: testData.bio) { response in
            switch response.result {
            case .success(let registerResponse):
                XCTAssertEqual(registerResponse.result, 1)
                registeredExpectation.fulfill()

            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 10)
    }
}

