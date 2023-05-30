//
//  ValidationServiceTest.swift
//  TestExample1Tests
//
//  Created by engin gülek on 30.05.2023.
//

import XCTest
@testable import TestExample1
final class ValidationServiceTest: XCTestCase {
    var validation : ValidationService!

    override func setUpWithError() throws {
        try super.setUpWithError()
       validation = ValidationService()
    }

    override func tearDownWithError() throws {
       validation = nil
        try super.tearDownWithError()
    }


    func test_is_valid_username() throws {
        XCTAssertNoThrow(try validation.validationUsername("kilo loco"))
    }
    
    func test_is_username_is_nil() throws {
        let expectedError = ValidationError.invalidValue
        var error : ValidationError?
        
        XCTAssertThrowsError(try validation.validationUsername(nil)){ thrownError in
            error = thrownError as? ValidationError
            
        }
        
        XCTAssertEqual(expectedError, error)
    }
    
    func test_username_too_long() throws {
        let expectedError = ValidationError.usernameTooLong
        var error : ValidationError?
        let username = "very long user name1"
        XCTAssertTrue(username.count == 20)
        
        
        XCTAssertThrowsError(try validation.validationUsername(username)){ thrownError in
            error = thrownError as? ValidationError
        }
        
        XCTAssertEqual(expectedError, error)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
