//
//  跳跃游戏.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/5.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func canJump(_ nums: [Int]) -> Bool {
    if nums.count == 0 {
        return false
    }
    var max = 0, i = 0
    while i <= max {
        if nums[i] + i > max {
            max = nums[i] + i
        }
        if max >= nums.count - 1 {
            return true
        }
        i += 1
    }
    return false
}
