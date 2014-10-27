//
//  TaskManager.swift
//  My Task List
//
//  Created by Joshua Curtiss on 10/25/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit

var taskMgr:TaskManager = TaskManager()

struct task {
    var name="Unnamed"
    var desc="Unknown"
}

class TaskManager:NSObject
{
    var tasks=[task]()
    func addTask(name:String,desc:String)
    {
        tasks.append(task(name: name, desc: desc))
    }
}

