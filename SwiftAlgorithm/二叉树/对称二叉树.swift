//
//  对称二叉树.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/12.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation


func isSymmetric(_ root: TreeNode?) -> Bool {
    if root == nil {
        return true
    }
    
    return isSymmetricOf(root!.left,  root!.right)
}
func isSymmetricOf(_ left: TreeNode?, _  right: TreeNode?) -> Bool{
    if left == nil && right == nil {
        return true
    }
    if left == nil || right == nil {
        return false
    }
    if left!.val != right!.val {
        return false
    }
    return isSymmetricOf(left!.left, right!.right) && isSymmetricOf(left!.right, right!.left)
}
