//
//  AddressForm.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class AddressForm: UIView {
    
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var codeField: UITextField!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init()
    {
        self.init()
    }
    
    func validateFields() -> Bool{
        
        var isFormValid = true
        
        let addressValidator = CPFieldValidator()
        let cityValidator = CPFieldValidator()
        let postalCodeValidator = CPNumberFieldValidator()
        
        if !addressValidator.isFieldValid(self.addressField.text!) {
            isFormValid = false
        }
        
        if !cityValidator.isFieldValid(self.cityField.text!) {
            isFormValid = false
        }
        
        if !postalCodeValidator.isFieldValid(self.codeField.text!) {
            isFormValid = false
        }
        
        return isFormValid
    }
}
