//
//  Task.swift
//  My Task List
//
//  Created by Josh Curtiss on 10/27/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit
import CoreData

@objc(Task)
class Task:NSManagedObject
{
    @NSManaged var name:String
    @NSManaged var desc:String
}
