//
//  ViewController.swift
//  ToDo
//
//  Created by Joshua Curtiss on 10/29/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var action:String=""
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    @IBOutlet var btnDone: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        txtTask.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        NSLog("Text field should return")
        if textField.returnKeyType == UIReturnKeyType.Next {
            var next=textField.superview?.viewWithTag(textField.tag+1)
            next?.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            NSLog("Get ready to perform segue!!!")
            performSegueWithIdentifier("done", sender: self)
        }
        return false
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        NSLog("Prepare for segue... \(segue.identifier)")
        if segue.identifier=="done" && txtTask.text.utf16Count>0 {
            action="save"
        }
    }

}

