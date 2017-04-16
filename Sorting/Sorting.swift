//
//  Sorting.swift
//  Sorting
//
//  Created by LinuxPlus on 4/16/17.
//  Copyright © 2017 LinuxPlus. All rights reserved.
//

import Foundation
import UIKit

func sort<T: Comparable> (array: inout[T]) {
    for i in 1..<array.count {
        var j = i - 1
        let x = array[i]
        var temp :T!
        while j >= 0 && x < array[j] {
            temp = array[j+1]
            array[j+1] = array[j]
            array[j] = temp
            j -= 1
        }
        array[j+1] = x
    }
}

var array = [13, 30, 68, 19, 1, 4, 28, 65, 96, 13];
sort(array: &array)

var chars = ["C","Z","O","A","B"]
sort(array: &chars)
