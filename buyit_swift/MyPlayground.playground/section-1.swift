// Playground - noun: a place where people can play

import UIKit

var dict: Dictionary<String, String[]> =
[
    "k1": ["v1", "v11", "v111"],
    "k2": ["v2", "v22", "v222"],
    "k3": ["v3", "v33", "v333"]
]

var array = String[]()

for airportCode in dict.keys {
    array += airportCode
}
array