//
//  移动零.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/13.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    if nums.count == 0 {
        return
    }
    var index0 = 0
    var indexNot0 = 0
    // true表示正在找0的数，false 表示正在找不为0的数
    while indexNot0 < nums.count {
        if nums[indexNot0] != 0 {
            if index0 != indexNot0 {
                nums[index0] = nums[indexNot0]
            }
            indexNot0 += 1
            index0 += 1
        } else {
            indexNot0 += 1
        }
    }
    for i in index0..<nums.count {
        nums[i] = 0
    }
}
