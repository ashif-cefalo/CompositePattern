//
//  PhoneForm.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class PhoneForm: UIView {

    @IBOutlet weak var officePhoneField: UITextField!
    @IBOutlet weak var homePhoneField: UITextField!
    
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
        
        let homePhoneValidator = CPNumberFieldValidator()
        let officePhoneValidator = PhoneFieldValidator()
        
        if !homePhoneValidator.isFieldValid(self.homePhoneField.text!) {
            isFormValid = false
        }
        
        if !officePhoneValidator.isFieldValid(self.officePhoneField.text!) {
            isFormValid = false
        }
        
        return isFormValid
    }
}
