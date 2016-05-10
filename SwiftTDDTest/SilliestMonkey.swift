//
//  SilliestMonkey.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation


public func silliest(monkeys: [Monkey]) -> [Monkey] {

    return monkeys.filter{$0.silliness == .NotSilly || $0.silliness == .ExtremelySilly}

}

public func monkeyContains<T: Equatable>(array: [T], object: T?) -> Bool {

    for temp in array {
    
        if temp == object {
            
            return true
            
        }
    
    }

    return false
    
}