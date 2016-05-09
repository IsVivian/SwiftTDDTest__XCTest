//
//  Project.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/9.
//  Copyright © 2016年 sherry. All rights reserved.
//

import UIKit

class Project {

    private let id: Int
    
    init(id: Int) {
    
        self.id = id
    
    }
    
    func asDictionary()->[String: AnyObject] {
    
        return ["id": id]
    
    }
    
}
