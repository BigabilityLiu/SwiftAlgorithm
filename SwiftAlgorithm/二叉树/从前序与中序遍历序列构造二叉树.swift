//
//  从前序与中序遍历序列构造二叉树.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/25.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    // preorder第一个元素为root
    // inorde中，root左边为左元素，右边为右元素
    if preorder.count == 0 {
        return nil
    }
    let root = TreeNode(preorder.first!)
    var rootIndex = 0
    while rootIndex < inorder.count {
        if inorder[rootIndex] == root.val {
            break
        } else {
            rootIndex += 1
        }
    }
    if rootIndex > 0 {
        root.left = buildTree(Array(preorder[1...rootIndex]), Array(inorder[0..<rootIndex]))
    }
    if rootIndex < inorder.count - 1 {
        root.right = buildTree(Array(preorder[rootIndex + 1..<preorder.count]), Array(inorder[rootIndex + 1..<inorder.count]))
    }
    return root
}
