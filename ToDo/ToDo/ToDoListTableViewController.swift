//
//  ToDoListTableViewController.swift
//  ToDo
//
//  Created by Joshua Curtiss on 10/30/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit

@objc(ToDoListTableViewController) class ToDoListTableViewController: UITableViewController {

    var tasks:NSMutableArray=[]
    
    func unwindToList(segue:UIStoryboardSegue)
    {
        var source:ViewController=segue.sourceViewController as ViewController
        var item:Task=source.task!
        println("Unwound to list. Item: \(item.name)")
        tasks.addObject(item)
        tableView.reloadData()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Temporary loaded data:
        tasks.addObject(Task(name: "Buy milk"))
        tasks.addObject(Task(name: "Buy eggs"))
        tasks.addObject(Task(name: "Read a book"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell", forIndexPath: indexPath) as UITableViewCell
        var task=tasks[indexPath.row] as Task
        cell.textLabel.text=task.name
        if task.completed {cell.accessoryType = .Checkmark}
        else {cell.accessoryType = .None}
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        var tappedItem:Task = self.tasks[indexPath.row] as Task
        tappedItem.completed = !tappedItem.completed
        tableView.reloadData()
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
