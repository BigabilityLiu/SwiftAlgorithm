//
//  打家劫舍.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/16.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func rob(_ nums: [Int]) -> Int {
    var currentMax = 0, preMax = 0
    var temp = 0
    for num in nums {
        temp = currentMax
        currentMax = max(preMax + num, currentMax)
        preMax = temp
    }
    
    return currentMax
}
