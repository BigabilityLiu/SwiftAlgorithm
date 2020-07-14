//
//  两个数组的交集 II.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/13.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result = [Int]()
    if (nums1.count == 0 || nums2.count == 0) { return result }
    var dic1 = [Int : Int]()
    for i in nums1 {
        if dic1[i] == nil {
            dic1[i] = 1
        } else {
            dic1[i] = dic1[i]! + 1
        }
    }
    for i in nums2 {
        if let count = dic1[i] {
            result.append(i)
            if count == 1 {
                dic1[i] = nil
            } else {
                dic1[i] = count - 1
            }
            
        }
    }
    return result
}

