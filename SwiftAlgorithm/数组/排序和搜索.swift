//
//  排序和搜索.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    if n == 0 {
        return
    }
    if m == 0 {
        nums1 = nums2
    }
    var index = 0
    for i in 0..<n {
        if nums2[i] <= nums1[index] {
            nums1.insert(nums2[i], at: index)
        }
        index += 1
    }
}
//class Solution {
//    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//        var currentIndex = 0
//        var currentM = 0
//        var currentN = 0
//        if m + n == 0 {
//            nums1.removeAll()
//            return
//        }
//        if m + n == 1 {
//            if m == 0 {
//                nums1[0] = nums2[0]
//            }
//        }
//        while currentIndex < m + n {
//            if currentM == m {
//                for i in currentN..<n {
//                    nums1[currentIndex] = nums2[i]
//                    currentIndex += 1
//                }
//                break
//            }
//            if currentN == n {
//                break
//            }
//            if nums1[currentIndex] > nums2[currentN] {
//                nums1.insert(nums2[currentN], at: currentIndex)
//                currentN += 1
//            }else{
//                currentM += 1
//            }
//            currentIndex += 1
//        }
//        nums1.removeLast(nums1.count - m - n)
//    }
//}
