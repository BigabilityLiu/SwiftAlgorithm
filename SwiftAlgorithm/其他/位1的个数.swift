//
//  位1的个数.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func hammingWeight(_ n: Int) -> Int {
    var result = 0
    var flag = 1
    while flag > 0 {
        if (n & flag) > 0 {
            result += 1
        }
        flag = flag << 1
    }
    return result
}

