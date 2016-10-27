//
//  CPNumberFieldValidator.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation


public class CPNumberFieldValidator : CRegExFieldValidator {
        
    public init() {
        super.init(pattern: "^[0-9]*$")
        self.errorMessage = "This field can only contain numbers."
    }
}