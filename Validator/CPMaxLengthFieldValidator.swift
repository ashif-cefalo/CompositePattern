//
//  CPMaxLengthFieldValidator.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

public class CPMaxLengthFieldValidator : CPFieldValidator {
    
    let maxLenght: Int
    
    init(_ maxLenght: Int) {
        self.maxLenght = maxLenght
        super.init()
        
        self.errorMessage = "Max length should be \(self.maxLenght)."
    }
    
    public override func isFieldValid(input: String) -> Bool {
        return input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) <= self.maxLenght
    }
}
