//
//  寻找两个正序数组的中位数.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let count = nums1.count + nums2.count
    let flag = count % 2 == 0  // true偶数 false奇数
    var m = 0, n = 0, current = 0
    var result = 0
    while m < nums1.count && n < nums2.count {
        var num = 0
        if nums1[m] <= nums2[n] {
            num = nums1[m]
            m += 1
        } else {
            num = nums2[n]
            n += 1
        }
        if flag && current == (count/2 - 1) {
            result += num
        }
        if current == count/2 {
            result += num
            current += 1
            break
        }
        current += 1
    }
    if current <= count / 2 {
        let array = m == nums1.count ? nums2 : nums1
        var index = m == nums1.count ? n : m
        while current <= count / 2 {
            if flag && current == (count/2 - 1) {
                result += array[index]
            }
            if current == count/2 {
                result += array[index]
            }
            index += 1
            current += 1
        }
    }
    return flag ? Double(result) / 2 : Double(result)
}
