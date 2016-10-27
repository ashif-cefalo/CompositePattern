//
//  CPMinLengthFieldValidator.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

public class CPMinLengthFieldValidator : CPFieldValidator {

    let minLenght: Int
    
    init(_ minLength: Int = 0) {
        self.minLenght = minLength
        super.init()
        
        self.errorMessage = "Min length should be \(self.minLenght)."
    }
        
    public override func isFieldValid(input: String) -> Bool {
        return input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) >= self.minLenght
    }
}
