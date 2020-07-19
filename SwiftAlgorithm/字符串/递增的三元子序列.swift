//
//  递增的三元子序列.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/19.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
    if nums.count < 3 {
        return false
    }
    var left = 0, right = nums.count - 1

    while left < nums.count - 2 {
        if nums[left] >= nums[left + 1] {
            left += 1
        } else {
            break
        }
    }
    while right > left + 1 {
        if nums[right - 1] >= nums[right] {
            right -= 1
        } else {
            break
        }
    }
    for i in left + 1..<right {
        if nums[i] > nums[left] && nums[i] < nums[right] {
            return true
        }
    }
    return increasingTriplet(Array(nums[left + 1...right])) || increasingTriplet(Array(nums[left...right - 1]))
}
