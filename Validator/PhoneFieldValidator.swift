//
//  PhoneFieldValidator.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

public class PhoneFieldValidator : CPFieldValidator {
    
    public override init() {
        super.init()
        
        self.addFieldValidator(CPNumberFieldValidator())
        self.addFieldValidator(CPRequiredFieldValidator())
        self.addFieldValidator(CPMinLengthFieldValidator(7))
        self.addFieldValidator(CPMaxLengthFieldValidator(11))
    }
}