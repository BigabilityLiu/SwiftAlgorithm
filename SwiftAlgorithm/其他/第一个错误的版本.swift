//
//  第一个错误的版本.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/16.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
func isBadVersion(_ version: Int) -> Bool{ return true }
func firstBadVersion(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    if n == 1 {
        return isBadVersion(1) ? 1 : 0
    }
    var start = 1, end = n
    var mid: Int
    while start < end - 1 {
        mid = (start + end) / 2
        if isBadVersion(mid) {
            end = mid
        } else {
            start = mid
        }
    }
    if isBadVersion(start) {
        return start
    } else {
        if isBadVersion(end) {
            return end
        } else {
            return 0
        }
    }
}
