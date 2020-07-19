//
//  3的幂.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/16.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func isPowerOfThree(_ n: Int) -> Bool {
    var n = n
    while n >= 3 {
        if n % 3 == 0 {
            n /= 3
        } else {
            return false
        }
    }
    return n == 1
}
