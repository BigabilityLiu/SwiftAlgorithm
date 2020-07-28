//
//  填充每个节点的下一个右侧节点指针.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/26.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

func connect(_ root: Node?) -> Node? {
    if root == nil {
        return nil
    }
    var array = [[Node]]()
    connect(root!, array: &array, depth: 0)
    return root
}

func connect(_ root: Node, array: inout [[Node]], depth: Int) {
    if array.count <= depth {
        array.append([root])
    } else {
        array[depth].last?.next = root
        array[depth].append(root)
    }
    if root.left != nil && root.right != nil {
        connect(root.left!, array: &array, depth: depth + 1)
        connect(root.right!, array: &array, depth: depth + 1)
    }
}
