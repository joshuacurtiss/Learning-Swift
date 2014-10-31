//
//  Task.swift
//  ToDo
//
//  Created by Joshua Curtiss on 10/31/14.
//  Copyright (c) 2014 Joshua Curtiss. All rights reserved.
//

import UIKit

class Task: NSObject
{
    
    var name:NSString=""
    var completed:Bool=false
    var createDT:NSDate=NSDate()

    init(name:String)
    {
        self.name=name
    }
    
}
