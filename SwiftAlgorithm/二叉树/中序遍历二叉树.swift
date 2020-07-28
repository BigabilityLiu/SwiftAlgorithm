//
//  中序遍历二叉树.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/25.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if root == nil {
        return [Int]()
    }
    return inorderTraversal(root!.left) + [root!.val] + inorderTraversal(root!.right)
}
