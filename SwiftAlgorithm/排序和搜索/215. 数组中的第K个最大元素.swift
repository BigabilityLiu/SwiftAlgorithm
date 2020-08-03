//
//  数组中的第K个最大元素.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/1.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    if nums.count < k {
        return 0
    }
    var map = [Int: Int]()
    for num in nums {
        if let count = map[num] {
            map[num] = count + 1
        } else {
            map[num] = 1
        }
    }
    var sortedArray = [(Int, Int)]()
    var currentK = 0
    for (num, count) in map {
        var inserted = false
        for i in 0..<sortedArray.count {
            if num > sortedArray[i].0  {
                sortedArray.insert((num, count), at: i)
                inserted = true
                currentK += count
                break
            }
        }
        if inserted {
            if currentK > k {
                while currentK - sortedArray.last!.1 >= k {
                    let last = sortedArray.removeLast()
                    currentK -= last.1
                }
            }
        } else {
            if currentK < k {
                sortedArray.append((num, count))
                currentK += count
            }
        }
    }
    return sortedArray.last!.0
}
