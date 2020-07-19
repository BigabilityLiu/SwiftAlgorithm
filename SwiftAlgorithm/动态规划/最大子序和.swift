//
//  最大子序和.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/18.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var prev = nums[0]
    var result = nums[0]
    if nums.count > 1 {
        for i in 1..<nums.count {
            let new = max(nums[i], nums[i] + prev)
            if new >= result {
                result = new
            }
            prev = new
        }
    }
    return result
}
