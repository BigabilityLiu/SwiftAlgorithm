//
//  子集.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/26.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func subsets(_ nums: [Int]) -> [[Int]] {
    if nums.count == 0 {
        return []
    }
    if nums.count == 0 {
        return [nums, []]
    }
    let pre = subsets(Array(nums[1..<nums.count]))
    var result = pre
    for var array in pre {
        array.append(nums.first!)
        result.append(array)
    }
    return result
}
