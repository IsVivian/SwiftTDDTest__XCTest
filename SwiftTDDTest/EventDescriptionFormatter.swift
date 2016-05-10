//
//  EventDescriptionFormatter.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation

public extension NSDate {

    class func dateFormatterString(dateString: String) ->NSDate {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.dateFromString(dateString)!
    }
    
    func descriptionString() -> String {
    
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.stringFromDate(self)
    
    }
    

}

public class EventDescriptionFormatter {

    public init(){ }

    public func eventDescriptionFromEvent(event: EventProtocol) -> String {
    
        return "\(event.name):开始于\(event.starDate.descriptionString())，结束于\(event.endDate.descriptionString())"
    
    }
}