//
//  二叉树的层序遍历.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/15.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    if root == nil {
        return []
    }
    var result = [[Int]]()
    levelOrder(root!, depth: 0, result: &result)
    return result
}

func levelOrder(_ root: TreeNode, depth: Int, result: inout [[Int]]) {
    if (depth >= result.count) {
        result.append([root.val])
    } else {
        result[depth].append(root.val)
    }
    if root.left != nil {
        levelOrder(root.left!, depth: depth + 1, result: &result)
    }
    if root.right != nil {
        levelOrder(root.right!, depth: depth + 1, result: &result)
    }
}
