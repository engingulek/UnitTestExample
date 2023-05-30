//
//  ConvertersTest.swift
//  TestExample3Tests
//
//  Created by engin gülek on 30.05.2023.
//

import XCTest
@testable import TestExample3
final class ConvertersTest: XCTestCase {
    var sut : Converters!
    
    override  func setUp() {
        super.setUp()
        sut = Converters()
    }
    
    override  func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_convert10_returns1080(){
    
        let actual = try! sut.convertEuroToUSD(euro: "10")
        let expected = "$10.80"
        XCTAssertEqual(actual, expected)
        
    }
    
    func test_convertNeg10_returnErrorMessage(){
        
        XCTAssertThrowsError(try  sut.convertEuroToUSD(euro: "-10")) { error in
            XCTAssertEqual(error as! ConvertersError, ConvertersError.positiveNumber)
        }
    }


}
