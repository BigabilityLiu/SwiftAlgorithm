//
//  盛最多水的容器.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/13.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    if height.count < 2 {
        return 0
    }
    var result = 0
    var startIndexs: [Int] = [0]
    for end in 1..<height.count {
        var newStartIndex: Int?
        for j in 0..<startIndexs.count {
            let start = startIndexs[j]
            let total = min(height[start], height[end]) * (end - start)
            if total >= result {
                result = total
                newStartIndex = j
            }
            if height[end] > height[start] {
                startIndexs.append(end)
            }
        }
        if let newStartIndex = newStartIndex, newStartIndex != 0 {
            startIndexs.removeFirst(newStartIndex)
        }
    }
    return result
}
