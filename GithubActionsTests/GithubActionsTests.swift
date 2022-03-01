//
//  GithubActionsTests.swift
//  GithubActionsTests
//
//  Created by Saurabh on 24/02/22.
//

import XCTest
@testable import GithubActions

class GithubActionsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddMoney() {
        var bank = Bank()
        let expectation1 = expectation(description: "0 money")
        if bank.balance == 0 {
            expectation1.fulfill()
        } else {
            XCTFail("wrong initial balance")
        }
        
        bank.add(money: 20)
        let expactation20 = expectation(description: "20 money")
        if bank.balance == 20 {
            expactation20.fulfill()
        } else {
            XCTFail("balance should be 20")
        }
        waitForExpectations(timeout: 30)
    }
}
