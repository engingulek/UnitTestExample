//
//  Converts.swift
//  TestExample3
//
//  Created by engin gülek on 30.05.2023.
//

import Foundation

enum ConvertersError : Error {
    case positiveNumber
}

class Converters {
    func convertEuroToUSD(euro:String) throws -> String {
        let usdRate = 1.08
        let euroValue = Double(euro) ?? 0
        
        if euroValue <= 0 {
            throw ConvertersError.positiveNumber
        }
        
        if euroValue >= 1_000_000 {
            return "Value too big to convert"
        }
        
        return "$\(String(format : "%.2f",euroValue * usdRate))"
    }
}
