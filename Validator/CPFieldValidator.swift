//
//  CPFieldValidator.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

public protocol FieldValidator {
    
    var errorMessage: String? {get set}
    
    func isFieldValid(input: String) -> Bool
}


public class CPFieldValidator : NSObject, FieldValidator {

    public var errorMessage: String? = ""
    
    var fieldValidators = [FieldValidator]()
    
    public func isFieldValid(input: String) -> Bool {
        
        for fieldValidator in self.fieldValidators {
            if !fieldValidator.isFieldValid(input) {
                
                self.errorMessage = fieldValidator.errorMessage
                
                return false
            }
        }
        
        return true
    }
    
    func addFieldValidator(fieldValidator: FieldValidator) {
        self.fieldValidators.append(fieldValidator)
    }
}