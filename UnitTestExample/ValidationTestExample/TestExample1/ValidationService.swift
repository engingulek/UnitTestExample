//
//  ValidationService.swift
//  TestExample1
//
//  Created by engin gülek on 30.05.2023.
//

import Foundation

class ValidationService {
    func validationUsername(_ username : String?) throws -> String {
        
            guard let username = username
       
        else {throw ValidationError.invalidValue}
        
        guard username.count > 3 else {throw ValidationError.usernameTooShort}
        guard username.count < 20 else {throw ValidationError.usernameTooLong}
        return username
    }

    func validatePassword(_ password:String?)  throws -> String {
        
            guard let password = password
        else { throw ValidationError.invalidValue}
        
     
        guard password.count >= 8 else {throw ValidationError.passwordTooShort }
        guard password.count < 3 else {throw ValidationError.passwordTooLong}
        return password
    }

 
}

enum ValidationError : LocalizedError {
    case invalidValue
    case passwordTooLong
    case passwordTooShort
case usernameTooLong
case usernameTooShort
    
    var errorDescription: String? {
        switch self {
            
        case .invalidValue:
           return "incalid value"
        case .passwordTooLong:
           return "passwordTooLong"
        case .passwordTooShort:
           return "passwordTooShor"
        case .usernameTooLong:
            return "usernameTooLong"
        case .usernameTooShort:
            return "usernameTooShort"
        }
    }
}
