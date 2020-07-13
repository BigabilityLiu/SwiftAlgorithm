//
//  爬楼梯.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    switch n {
    case 1:
        return 1
    case 2:
        return 2
    default:
        break
    }
    var prev1 = 2, prev2 = 1, current = 0
    for _ in 3...n {
        current = prev1 + prev2
        prev2 = prev1
        prev1 = current
    }
    return current
}
