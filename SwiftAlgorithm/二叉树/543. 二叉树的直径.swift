//
//  543. 二叉树的直径.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/17.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

// 入口
// 输入： 二叉树
// 输出： 最长路径长度（可不经过根）
func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    var result = 0
    _ = diameterOfBinaryTreeHelper(root, current: 0, max: &result)
    return result
}
// helper
func diameterOfBinaryTreeHelper(_ root: TreeNode?, current: Int, max: inout Int) -> Int {
    if root == nil {
        return current - 1
    }
    if root!.left == nil && root!.right == nil {
        return current
    } else {
        var path: Int
        let pathLeft = diameterOfBinaryTreeHelper(root!.left, current: current + 1, max: &max)
        let pathRight = diameterOfBinaryTreeHelper(root!.right, current: current + 1, max: &max)
        if root!.left == nil {
            path = pathRight
        }
        else if root!.right == nil {
            path =  pathLeft
        }
        else {
            path =  pathLeft > pathRight ? pathLeft : pathRight
        }
        let currentDiameter =  pathLeft + pathRight - 2 * current
        if currentDiameter > max {
            max = currentDiameter
        }
        return path
    }
}
