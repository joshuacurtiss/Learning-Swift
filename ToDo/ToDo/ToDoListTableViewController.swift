//
//  ToDoListTableViewController.swift
//  ToDo
//
//  Created by Joshua Curtiss on 10/30/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit

@objc(ToDoListTableViewController) class ToDoListTableViewController: UITableViewController {

    func unwindToList(segue:UIStoryboardSegue)
    {
        NSLog("Unwind to list")
        var source:ViewController=segue.sourceViewController as ViewController
        if source.action=="save" {
            var taskName:String=source.txtTask.text
            var taskDesc:String=source.txtDesc.text
            taskManager.addTask(taskName, desc: taskDesc)
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskManager.getTaskCount()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell", forIndexPath: indexPath) as UITableViewCell
        var task=taskManager.getTask(indexPath.row) as Task
        cell.textLabel.text=task.name
        cell.detailTextLabel?.text=task.desc
        if task.completed {cell.accessoryType = .Checkmark}
        else {cell.accessoryType = .None}
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        var tappedItem:Task = taskManager.getTask(indexPath.row) as Task
        tappedItem.completed = !tappedItem.completed
        taskManager.save(tappedItem)
        tableView.reloadData()
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            taskManager.removeTask(indexPath.row)
            tableView.reloadData()
        }
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

}
