//
//  main.swift
//  Dictionary
//
//  Created by Stannis Baratheon on 27/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation

print("Hello, World!")

var scores = ["Richard":500, "Peter":400, "Luke":100]
print("scores has the following values \(scores)")

var scores2:Dictionary<String, Int> = ["Richard":500, "Peter":400, "Luke":100]

var months = Dictionary<String, Int>()
print("months has the following values \(months)")

months["January"] = 31
months["February"] = 28
months["March"] = 31
print("months has the following values \(months)")

if let days = months["January"] {
    print("January has \(days) days")
}

months["February"] = 29
print("months has the following values \(months)")


if let oldValue = months.updateValue(28, forKey: "February") {
    print("The old value for February was \(oldValue)")
}

if let deletedItem = months.removeValue(forKey:"January") {
    print("The value that was deleted was \(deletedItem)")
    print("months has the following values \(months)")
}

print("Months has \(months.count) entries")

let keys = Array(months.keys)

let values = Array(months.values)
print("The keys are \(keys)")
print("The values are \(values)")

var shapesArray = ["Circle" , "Square" , "Triangle"]
var coloursArray = ["Red" , "Green" , "Blue"]
var myDictionary:Dictionary<String, Any> = ["Shapes":shapesArray,"Colours":coloursArray]
print("myDictionary has the following values \(myDictionary)")
