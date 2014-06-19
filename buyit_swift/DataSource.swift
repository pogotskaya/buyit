//
//  DataSource.swift
//  buyit_swift
//
//  Created by Alla Pogotskaya on 6/13/14.
//  Copyright (c) 2014 tau. All rights reserved.
//

import Foundation
import UIKit

class DataSource: NSObject {
    var source = [
        "for cat": ["milk", "cucumber", "mouse"],
        "flowers": ["roses", "knapweed", "camomile", "lily"],
        "cake": ["milk", "flour", "sugar", "soda", "vinegar", "cinnamon"]
        
    ]
    
    func getLists() -> String[] {
        var array = String[]()
        for key in self.source.keys {
            array += key
        }
        return array
    }
    
    func getListItems(listName:String) -> String[] {
        return self.source[listName]!
    }
}
