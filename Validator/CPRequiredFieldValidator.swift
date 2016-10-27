//
//  CPRequiredFieldValidator.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

public class CPRequiredFieldValidator : CPFieldValidator {
    
    override init() {
        super.init()
        self.errorMessage = "This field is required."
    }
    
    public override func isFieldValid(input: String) -> Bool {
        
        return input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) > 0
    }
}