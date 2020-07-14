//
//  计数质数.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func countPrimes(_ n: Int) -> Int {
    if n < 2 {
        return 0
    }
    var array = Array.init(repeating: true, count: n + 1)
    var result = 0
    var i = 2
    while i < n {
        if array[i] {
            result += 1
        } else {
            var j = i * 2
            while j <= n {
                array[j] = false
                j += i
            }
        }
        i += 1
    }
    return result
}
