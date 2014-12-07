//
//  Date.swift
//  TaskIt
//
//  Created by Chris Shaughnessy on 12/6/14.
//  Copyright (c) 2014 Webified Design. All rights reserved.
//

import Foundation

class Date {
    
    class func from (#year:Int, month:Int, day:Int) -> NSDate {
        
        var components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        var gregorianCalendar = NSCalendar(identifier: NSGregorianCalendar)!
        var date = gregorianCalendar.dateFromComponents(components)
        
        return date!
    }
    
    class func toString (#date:NSDate) -> String {
        
        let dateStringFormater = NSDateFormatter()
        dateStringFormater.dateFormat = "MM/dd/yyyy"
        let dateString = dateStringFormater.stringFromDate(date)
        
        return dateString
    }
    
}