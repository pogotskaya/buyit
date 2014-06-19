//
//  BuyItem.swift
//  buyit_swift
//
//  Created by Alla Pogotskaya on 6/19/14.
//  Copyright (c) 2014 tau. All rights reserved.
//

import UIKit
import CoreData

class BuyItem: NSManagedObject {
    var id: Int = 0
    var name: String = ""
    var notes: String = ""
    var isDone = true
}
