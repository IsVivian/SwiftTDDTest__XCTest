//
//  Url.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/6.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation

class Url: NSObject {

    var baseUrl: String
    init(baseUrl: String) {
    
        self.baseUrl = baseUrl
    
    }
    
    func getActualPathFrom(resourcePath: String, segments: [String: String])->String {
    
        var actualPath = resourcePath
        for (key, value) in segments {
            
            let segmentPlaceHolder = "{\(key)}"
            actualPath = actualPath.stringByReplacingOccurrencesOfString(segmentPlaceHolder, withString: value, options: .LiteralSearch, range: nil)
            
        }
        
        return baseUrl + actualPath
    
    }
    
}
