//
//  TaskManager.swift
//  My Task List
//
//  Created by Joshua Curtiss on 10/25/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit
import CoreData

var taskManager:TaskManager = TaskManager()

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
    func createTask()->Task
    {
        let ent=NSEntityDescription.entityForName("Task", inManagedObjectContext: context)!
        var t:Task=Task(entity:ent, insertIntoManagedObjectContext:context)
        t.createDT=NSDate()
        return t
    }
    func addTask(name:String,desc:String)
    {
        var newTask=createTask()
        newTask.name=name
        newTask.desc=desc
        save(newTask)
        load()
    }
    func removeTask(index:Int)
    {
        NSLog("Remove task: %@",tasks[index] as Task)
        context.deleteObject(tasks[index] as Task)
        save()
        load()
    }
    func getTask(index:Int)->Task
    {
        return tasks[index] as Task
    }
    func getTaskCount()->Int
    {
        return tasks.count
    }
    func save(task:Task)
    {
        task.modifyDT=NSDate()
        NSLog("Save task: %@",task)
        save()
    }
    func save()
    {
        context.save(nil)
    }
}

