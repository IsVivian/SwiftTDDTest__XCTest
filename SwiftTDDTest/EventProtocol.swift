//
//  EventProtocol.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation

public protocol EventProtocol {

    var name: String {get set}
    var starDate: NSDate {get set}
    var endDate: NSDate {get set}
    

}