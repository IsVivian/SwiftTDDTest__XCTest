//
//  Monkey.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation

public enum MonkeyIntelligent {
    case ExtremelySilly
    case NotSilly
    case VerySilly
}

//假如你想实现这一功能你就需要使用Equatable协议，Equatable协议主要应用于泛型编程(有关Swift的泛型编程可以参考这里)。如果你按照Equatable协议重载了"=="操作符，那么你无需再重载"!="操作符(因为“!=”的重载就是"=="的逻辑否)。
public class Monkey: Equatable {

    var name: String?
    var silliness: MonkeyIntelligent?
    
    init(name: String, silliness: MonkeyIntelligent) {
    
        self.name = name
        self.silliness = silliness
        
    }
    
}

public func ==(lhs: Monkey, rhs: Monkey) -> Bool {

    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)

}