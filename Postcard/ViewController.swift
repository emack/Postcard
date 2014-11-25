//
//  ViewController.swift
//  Postcard
//
//  Created by Edmar P. on 11/15/14.
//  Copyright (c) 2014 Edmar P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButton(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        //for name label and name textfield
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        enterNameTextField.resignFirstResponder()
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        

    }

}

