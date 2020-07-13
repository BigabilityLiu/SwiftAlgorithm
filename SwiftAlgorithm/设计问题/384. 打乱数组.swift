//
//  打乱数组.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

class Solution {

    let origin: [Int]
    init(_ nums: [Int]) {
        self.origin = nums
    }
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return origin
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        if origin.count < 2 {
            return origin
        }
        var result = origin
        for i in 0..<origin.count / 2 {
            let randomIndex = Int.random(in: 0..<origin.count)
            if randomIndex != i {
                let temp = result[i]
                result[i] = result[randomIndex]
                result[randomIndex] = temp
            }
        }
        return result
    }
}
