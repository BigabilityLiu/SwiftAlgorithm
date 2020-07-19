//
//  最长回文子串.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/19.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func longestPalindrome(_ s: String) -> String {
    if s.count < 2 {
        return s
    }
    let sArray = Array(s)
    var left = 0
    var result = String(sArray[0])
    // 去left到right区间作为字string
    while left < s.count - 1 {
        var right = s.count - 1
        if right - left < result.count {
            break
        }
        while left < right {
            if right - left < result.count {
                break
            }
            var start = left, end = right
            var find = true
            while start < end {
                if sArray[start] == sArray[end] {
                    start += 1
                    end -= 1
                } else {
                    find = false
                    break
                }
            }
            if find {
                if right - left + 1 > result.count {
                    result = String(sArray[left...right])
                }
                break
            } else {
                right -= 1
            }
        }
        left += 1
    }
    return result
}
