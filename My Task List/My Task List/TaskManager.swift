//
//  TaskManager.swift
//  My Task List
//
//  Created by Joshua Curtiss on 10/25/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit
import CoreData

var taskMgr:TaskManager = TaskManager()

class TaskManager:NSObject
{
    var tasks:NSArray!
    var context:NSManagedObjectContext!
    override init()
    {
        super.init()
        var appDel:AppDelegate=UIApplication.sharedApplication().delegate as AppDelegate
        context=appDel.managedObjectContext
        load()
    }
    func load()
    {
        var req=NSFetchRequest(entityName: "Task")
        req.returnsObjectsAsFaults=false
        var results:NSArray=context.executeFetchRequest(req, error: nil)!
        tasks=context.executeFetchRequest(req, error: nil)!
    }
    func addTask(name:String,desc:String)
    {
        let ent=NSEntityDescription.entityForName("Task", inManagedObjectContext: context)!
        var newTask=Task(entity:ent, insertIntoManagedObjectContext:context)
        newTask.name=name
        newTask.desc=desc
        context.save(nil)
        load()
    }
    func removeTask(index:Int)
    {
        context.deleteObject(tasks[index] as Task)
        context.save(nil)
        load()
    }
    func getTask(index:Int)->(name:String,desc:String)
    {
        var t:Task=tasks[index] as Task
        return (t.name,t.desc)
    }
    func getTaskCount()->Int
    {
        return tasks.count
    }
}

