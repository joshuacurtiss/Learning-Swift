//
//  FirstViewController.swift
//  My Task List
//
//  Created by Joshua Curtiss on 10/25/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTasks:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Returning to view:
    
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return taskMgr.getTaskCount()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        var t=taskMgr.getTask(indexPath.row)
        cell.textLabel.text=t.name
        cell.detailTextLabel?.text=t.desc
        return cell
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if( editingStyle == UITableViewCellEditingStyle.Delete )
        {
            taskMgr.removeTask(indexPath.row)
            tblTasks.reloadData()
        }
    }

}

