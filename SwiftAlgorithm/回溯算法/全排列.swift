//
//  全排列.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/26.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func permute(_ nums: [Int]) -> [[Int]] {
    if nums.count <= 1 {
        return [nums]
    }
    var result = [[Int]]()
    let pre = permute(Array(nums[1...]))
    for array in pre {
        for i in 0...array.count {
            var temp = array
            temp.insert(nums.first!, at: i)
            result.append(temp)
        }
    }
    return result
}
