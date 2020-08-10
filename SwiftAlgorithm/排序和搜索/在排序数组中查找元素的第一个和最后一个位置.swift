//
//  在排序数组中查找元素的第一个和最后一个位置.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/2.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    if nums.count == 0
        || nums.first! > target
        || nums.last! < target
    {
        return [-1, -1]
    }
    var start = 0, end = nums.count - 1, middle = 0
    while start < end - 1 {
        middle = (start + end) / 2
        if nums[middle] == target {
            break
        }
        else if nums[middle] < target {
            start = middle
        } else {
            end = middle
        }
    }
    if nums[middle] == target {
        let tempEnd = end
        let tempMiddle = middle
        end = middle
        while start < end - 1 {
            middle = (start + end) / 2
            if nums[middle] == target {
                end = middle
            }
            else {
                start = middle
            }
        }
        if nums[start] != target {
            start = end
        }
        let temStart = start
        start = tempMiddle
        end = tempEnd
        while start < end - 1 {
            middle = (start + end) / 2
            if nums[middle] == target {
                start = middle
            }
            else {
                end = middle
            }
        }
        if nums[end] != target {
            end = start
        }
        return [temStart, end]
    } else {
        if nums[start] == target {
            if nums[end] == target {
                return [start, end]
            } else {
                return [start, start]
            }
        } else {
            if nums[end] == target {
                return [end, end]
            } else {
                return [-1, -1]
            }
        }
    }
}
