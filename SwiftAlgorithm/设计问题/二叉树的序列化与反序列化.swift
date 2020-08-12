//
//  二叉树的序列化与反序列化.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/6.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

class Codec {
    func serialize(_ root: TreeNode?) -> String {
        var queue = [TreeNode?]()
        queue.append(root)
        var result = ""
        var lineCount = 1
        var currentLine = ""
        var i = 0
        var shouldAdd = false
        while queue.count > 0 {
            i += 1
            let top = queue.removeFirst()
            if let top = top {
                shouldAdd = true
                currentLine += "\(top.val),"
//                result += "\(top.val),"
                queue.append(top.left)
                queue.append(top.right)
            } else {
                currentLine += "null,"
//                result += "null,"
                queue.append(nil)
                queue.append(nil)
            }
            if i == lineCount {
                if shouldAdd {
                    result += currentLine
                } else {
                    break
                }
                lineCount *= 2
                i = 0
                shouldAdd = false
                currentLine = ""
            }
        }
        if result.count > 0 {
            result.removeLast()
        }
        return result
    }
    
    func deserialize(_ data: String) -> TreeNode? {
        if data.count == 0 {
            return nil
        }
        let valList = data.components(separatedBy: ",")
        var treeList: [TreeNode?] = [TreeNode?]()
        for i in 0..<valList.count {
            let val = valList[i]
            if val == "null" {
                treeList.append(nil)
                continue
            }
            let node = TreeNode(Int(val) ?? 0)
            treeList.append(node)
            let fatherIndex = (i + 1) / 2 - 1
            if fatherIndex < 0 {
                continue
            }
            if i % 2 == 1 {
                treeList[fatherIndex]?.left = node
            } else {
                treeList[fatherIndex]?.right = node
            }
        }
        return treeList.first!
    }
}
