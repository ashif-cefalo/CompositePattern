//
//  NameForm.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class NameForm: UIView {
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!

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
        
        let firstNameValidator = CPRequiredFieldValidator()
        let lastNameValidator = CPFieldValidator()
        
        if !firstNameValidator.isFieldValid(self.firstNameField.text!) {
            isFormValid = false
        }
        
        if !lastNameValidator.isFieldValid(self.lastNameField.text!) {
            isFormValid = false
        }
        
        return isFormValid
    }
}

extension UIView {
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
}
