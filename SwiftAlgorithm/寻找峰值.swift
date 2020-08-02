//
//  寻找峰值.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/1.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func findPeakElement(_ nums: [Int]) -> Int {
    if nums.count < 2 {
        return 0
    }
    var judgeLeft = true
    for i in 1..<nums.count {
        if judgeLeft {
            if nums[i] > nums[i - 1] {
                if i == nums.count - 1 {
                    return i
                } else {
                    judgeLeft = false
                }
            } else {
                return i - 1
            }
        } else {
            if nums[i] < nums[i - 1] {
                return i - 1
            } else {
                if i == nums.count - 1 {
                    return i
                } else {
                    judgeLeft = true
                }
            }
        }
    }
    return 0
}
