//
//  CPRegExFieldValidator.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

public class CRegExFieldValidator : CPFieldValidator {
    
    let pattern: String
    private var regEx: NSRegularExpression?
    
    public init(pattern: String) {
        
        self.pattern = pattern
        
        do {
            self.regEx = try NSRegularExpression(pattern: self.pattern, options: NSRegularExpressionOptions.CaseInsensitive)
        }
        catch {
            print("Invalid regular expression pattern: \(pattern)")
        }
        
        super.init()
        
        self.errorMessage = "This field can only contain numbers."
    }
    
    public override func isFieldValid(input: String) -> Bool {
        
        return self.regEx?.firstMatchInString(input, options: NSMatchingOptions.ReportCompletion,
            range: NSMakeRange(0, input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))) != nil
    }
}