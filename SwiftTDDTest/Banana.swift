//
//  Banana.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation

class Banana {

    private var isPeeled = false
    
    init() { }
    
    func peel() {
    
        isPeeled = true
    
    }
    
    var isEdible: Bool {
    
        return isPeeled
    
    }

}