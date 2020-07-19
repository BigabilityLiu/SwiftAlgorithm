//
//  无重复字符的最长子串.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/19.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var result = 0
    var dic = [Character: Int]()
    var i = 0
    var start = 0
    for c in s {
        var length = i - start
        if let index = dic[c] {
            // 如果已存在
            if index >= start {
                // 如果已存在的在开始及之后
                start = index + 1
            } else {
                // 如果已存在的在开始之前
                length += 1
            }
            
        }
        else {
            // 如果第一次出现
            // 计算长度
            length += 1
        }
        // 更新长度
        if length > result {
            result = length
        }
        dic[c] = i
        i += 1
    }
    return result
}
