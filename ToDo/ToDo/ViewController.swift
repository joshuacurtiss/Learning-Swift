//
//  ViewController.swift
//  ToDo
//
//  Created by Joshua Curtiss on 10/29/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var btnDone: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if sender as? NSObject != btnDone {return}
        println("Preparing for segue. The variable is \(txtTask.text.utf16Count) chars long.")
    }

}

