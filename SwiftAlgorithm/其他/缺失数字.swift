//
//  缺失数字.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/17.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    var total = nums.count * (nums.count + 1) / 2
    for num in nums {
        total -= num
    }
    return total
}
