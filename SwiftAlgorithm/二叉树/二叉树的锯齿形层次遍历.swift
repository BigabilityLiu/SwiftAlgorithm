//
//  二叉树的锯齿形层次遍历.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/25.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    var result = [[Int]]()
    if root == nil {
        return result
    }
    zigzagLevelOrder(root!, depth: 0, result: &result)
    return result
}

func zigzagLevelOrder(_ root: TreeNode, depth: Int, result: inout [[Int]]) {
    if result.count <= depth {
        result.append([Int]())
    }
    if depth % 2 == 0 {
        result[depth].append(root.val)
    } else {
        result[depth].insert(root.val, at: 0)
    }
    
    if root.left != nil {
        zigzagLevelOrder(root.left!, depth: depth + 1, result: &result)
    }
    if root.right != nil {
        zigzagLevelOrder(root.right!, depth: depth + 1, result: &result)
    }
}
