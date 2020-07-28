//
//  二叉搜索树中第K小的元素.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/26.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    if root == nil {
        return 0
    }
    var result = [Int]()
    kthSmallestHelper(root!, k, &result)
    if k <= result.count {
        return result[k - 1]
    } else {
        return 0
    }
}
func kthSmallestHelper(_ root: TreeNode, _ k: Int, _ result: inout [Int]) {
    if root.left != nil {
        kthSmallestHelper(root.left!, k, &result)
    }
    result.append(root.val)
    if root.right != nil && k > result.count {
        kthSmallestHelper(root.right!, k, &result)
    }
}
