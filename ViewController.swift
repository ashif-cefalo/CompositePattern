//
//  ViewController.swift
//  CompositePattern
//
//  Created by Ashif Iqbal on 10/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func formOneButtonPressed(sender: UIButton) {
     
        let viewcontroller = FormOneViewController(nibName: "FormOneViewController", bundle: nil)
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.window?.rootViewController = viewcontroller
    }

    @IBAction func formTwoButtonPressed(sender: UIButton) {
        let viewcontroller = FormTwoViewController(nibName: "FormTwoViewController", bundle: nil)
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.window?.rootViewController = viewcontroller
    }
}

