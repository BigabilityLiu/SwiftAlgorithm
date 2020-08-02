//
//  颜色分类.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/29.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func sortColors(_ nums: inout [Int]) {
    if nums.count < 2 {
        return
    }
    func swapHelper(x: Int, y: Int) {
        let temp = nums[x]
        nums[x] = nums[y]
        nums[y] = temp
    }
    var x = 0, y = nums.count - 1, i = 0
    while i >= x, i <= y {
        switch nums[i] {
        case 0:
            if i > x {
                swapHelper(x: x, y: i)
            } else {
                i += 1
            }
            x += 1
        case 1:
            i += 1
        case 2:
            if i < y {
                swapHelper(x: y, y: i)
                y -= 1
            } else {
                return
            }
        default:
            break
        }
    }
}
func sortColors2(_ nums: inout [Int]) {
    var p0 = 0
    var p2 = nums.count - 1
    var cur = 0
    
    while cur <= p2 {
        if nums[cur] == 0 {
            let temp = nums[p0]
            nums[p0] = 0
            nums[cur] = temp
            p0 += 1
            cur += 1
        }
        else if nums[cur] == 2 {
            let temp = nums[p2]
            nums[p2] = 2
            nums[cur] = temp
            p2 -= 1
        }
        else {
           cur += 1
        }
    }
}
