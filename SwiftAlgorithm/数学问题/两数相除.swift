//
//  两数相除.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/8.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
func divide(_ dividend: Int, _ divisor: Int) -> Int {
    var flag = 1
    if dividend == 0 {
        return 0
    }
    var dividend = dividend
    var divisor = divisor
    if (dividend < 0) {
        flag = -1
        dividend = -dividend
    }
    if (divisor < 0) {
        flag = flag == 1 ? -1 : 1
        divisor = -divisor
    }
    // divisor * key = value
    var dic = [Int: Int]()
    var key = 1
    var value = divisor
    while value < dividend {
        dic[key] = value
        key += key
        value += value
    }
    var result = 0
    while dividend >= divisor {
        if dividend >= value {
            result += key
            dividend -= value
        } else {
            key = key >> 1
            value = dic[key]!
        }
    }
    result = flag > 0 ? result : -result
    if result > Int32.max {
        result = Int(Int32.max)
    }
    else if result < Int32.min {
        result = Int(Int32.min)
    }
    return result
}
