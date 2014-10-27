//
//  SecondViewController.swift
//  My Task List
//
//  Created by Joshua Curtiss on 10/25/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit
import CoreData

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask:UITextField!
    @IBOutlet var txtDesc:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    // UI Textfield Delegate:
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }

    // Events
    
    @IBAction func addTask_Click(sender:UIButton)
    {
        var appDel:AppDelegate=(UIApplication.sharedApplication().delegate as AppDelegate)
        var context:NSManagedObjectContext=appDel.managedObjectContext!
        var newTask=NSEntityDescription.insertNewObjectForEntityForName("Task", inManagedObjectContext: context) as NSManagedObject
        newTask.setValue(txtTask.text, forKey: "name")
        newTask.setValue(txtDesc.text, forKey: "desc")
        context.save(nil)
        println(newTask)
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text=""
        txtDesc.text=""
        self.tabBarController?.selectedIndex=0
    }
    
}

