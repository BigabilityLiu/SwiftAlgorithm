//
//  前 K 个高频元素.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/29.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var numMapCount = [Int: Int]()
    for num in nums {
        if let count = numMapCount[num] {
            numMapCount[num] = count + 1
        } else {
            numMapCount[num] = 1
        }
    }
    var topKCounts = [Int]()
    var topKNums = [Int]()
    for (num, count) in numMapCount {
        var hasInserted = false
        for i in 0..<topKCounts.count {
            if count >= topKCounts[i] {
                hasInserted = true
                topKCounts.insert(count, at: i)
                topKNums.insert(num, at: i)
                break
            }
        }
        if hasInserted {
            if topKCounts.count > k {
                topKCounts.removeLast(topKCounts.count - k)
                topKNums.removeLast(topKNums.count - k)
            }
        }
        else if topKCounts.count < k {
            topKCounts.append(count)
            topKNums.append(num)
        }
    }
    return topKNums
}
