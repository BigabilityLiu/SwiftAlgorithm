//
//  将有序数组转换为二叉搜索树.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/15.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if nums.count == 0 {
        return nil
    }
    let root = TreeNode(nums[nums.count/2])
    if nums.count == 1 {
        return root
    }
    root.left = sortedArrayToBST(Array(nums[0..<nums.count/2]))
    root.right = sortedArrayToBST(Array(nums[nums.count/2+1..<nums.count]))
    return root
}
