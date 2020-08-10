//
//  搜索旋转排序数组.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/4.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 0 {
        return -1
    }
    if nums.first! <= target {
        // 升序寻找
        var previous = 0
        for i in 0..<nums.count {
            if nums[i] == target {
                return i
            }
            else if nums[i] > target {
                return -1
            } else {
                if i > 0 {
                    if nums[i] < previous {
                        return -1
                    }
                }
                previous = nums[i]
            }
            
        }
    } else {
        // 从尾部降序寻找
        var i = nums.count - 1
        var previous = 0
        while i >= 0 {
            if nums[i] < target {
                return -1
            }
            else if nums[i] == target {
                return i
            }
            else {
                if i < nums.count - 1 {
                    if previous < nums[i] {
                        return -1
                    }
                }
                previous = nums[i]
            }
            i -= 1
        }
    }
    return -1
}
