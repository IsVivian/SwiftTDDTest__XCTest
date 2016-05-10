//
//  Slingleton.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation

//GCD实现的单例模式
class Singleton {

    //通过结构体保存实例的引用
    private struct Inner {
    
        private static var instance: Singleton?
        private static var token: dispatch_once_t = 0
    
    }
    
    //提供静态的访问方法
    class var shared: Singleton {
        
        dispatch_once(&Inner.token) {
            Inner.instance = Singleton()
        }
        
        return Inner.instance!
    }
    
    //私有化构造方法
    private init() {
    
    
    }
    
}

//最简单的单例模式
//class SwiftSingleton {
//
//    class var shared: SwiftSingleton {
//        return Inner.instance
//    }
//
//    struct Inner {
//        static let instance: SwiftSingleton = SwiftSingleton()
//    }
//
//}
