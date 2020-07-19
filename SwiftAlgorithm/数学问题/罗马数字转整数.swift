//
//  罗马数字转整数.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/17.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation


func romanToInt(_ s: String) -> Int {
    let dic = ["I" : 1,
               "V" : 5,
               "X" : 10,
               "L" : 50,
               "C" : 100,
               "D" : 500,
               "M" : 1000,
    ]
//    "IV" : 4,
//    "IX" : 9,
//    "XL" : 40,
//    "XC" : 90,
//    "CD" : 400,
//    "CM" : 900
    var array = [Int]()
    for c in s {
        array.append(dic[String(c)]!)
    }
    var result = 0
    for i in 0..<array.count {
        if i == array.count - 1 {
            result += array[i]
        } else {
            if array[i] < array[i+1] {
                result -= array[i]
            } else {
                result += array[i]
            }
        }
    }
    return result
}
