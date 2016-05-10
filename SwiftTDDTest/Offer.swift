//
//  Offer.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/10.
//  Copyright © 2016年 sherry. All rights reserved.
//

import Foundation

class Offer {

    func offer(banana: Banana) -> String {
        
        if banana.isEdible {
            
            return "Hey, would you like a banana?"
            
        } else {
        
            return "Hey, want me to peel a banana for you?"
            
        }
        
    }
    

}