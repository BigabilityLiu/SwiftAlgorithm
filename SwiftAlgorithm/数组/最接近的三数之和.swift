//
//  最接近的三数之和.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/13.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    var result = Int.max
    if nums.count < 3 {
        return 0
    }
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for n in j+1..<nums.count-0 {
                let total = nums[i] + nums[j] + nums[n] - target
                if  abs(total) <  abs(result) {
                    result = total
                }
            }
        }
    }
    return result + target
}
