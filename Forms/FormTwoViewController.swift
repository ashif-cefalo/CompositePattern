//
//  FormTwoViewController.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class FormTwoViewController: UIViewController {

    @IBOutlet weak var nameComposite: NameForm!
    @IBOutlet weak var phoneComposite: PhoneForm!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func valdiateButtonPressed(sender: UIButton) {
     
        var isValid : Bool = true
        
        if !nameComposite.validateFields(){
            isValid = false
        }
        
        if !phoneComposite.validateFields(){
            isValid = false
        }
        
        if isValid{
            let alertController = UIAlertController(title: "Success", message: "All fields valid", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alertController.addAction(okAction)
            alertController.view.setNeedsLayout()
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        else{
            let alertController = UIAlertController(title: "Error!", message: "Invalid fields", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alertController.addAction(okAction)
            alertController.view.setNeedsLayout()
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }

}
