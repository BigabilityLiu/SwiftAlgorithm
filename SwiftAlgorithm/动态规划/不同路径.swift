//
//  不同路径.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/5.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
// [min: [max: value]]
var dic = [Int: [Int: Int]]()
func uniquePaths(_ m: Int, _ n: Int) -> Int {
    if m < 1 || n < 1 {
        return 0
    }
    if m == 1 || n == 1 {
        return 1
    }
    let min: Int, max: Int
    if m >= n {
        min = n
        max = m
    } else {
        min = m
        max = n
    }
    if var maxDic = dic[min] {
        if let value = maxDic[max] {
            return value
        }
        let result = uniquePaths(m - 1, n) + uniquePaths(m, n - 1)
        maxDic[max] = result
        dic[min] = maxDic
        return result
    }
    let result = uniquePaths(m - 1, n) + uniquePaths(m, n - 1)
    dic[min] = [max: result]
    return result
}
