//
//  Task.swift
//  ToDo
//
//  Created by Joshua Curtiss on 10/31/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit
import CoreData

@objc(Task)
class Task:NSManagedObject
{
    @NSManaged var name:String
    @NSManaged var desc:String
    @NSManaged var completeDT:NSDate?
    @NSManaged var modifyDT:NSDate
    @NSManaged var createDT:NSDate

    var completed:Bool
    {
        get
        {
            if let d = completeDT {
                return true
            } else {
                return false
            }
        }
        set
        {
            if( newValue ) {
                completeDT=NSDate()
            } else {
                completeDT=nil
            }
        }
    }
    
}
