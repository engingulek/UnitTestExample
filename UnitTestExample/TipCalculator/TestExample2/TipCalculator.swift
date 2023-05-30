//
//  TipCalculator.swift
//  TestExample2
//
//  Created by engin gülek on 30.05.2023.
//

import Foundation


enum TipCalculatorError: Error {
    case invalidInput
}

class TipCalculator {
    
    func calculate(total: Double, tipPercentage: Double) throws -> Double {
        
        if total < 0 {
            throw TipCalculatorError.invalidInput
        }
        
        return total * tipPercentage
    }
    
}
