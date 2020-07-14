//
//  旋转数组.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/14.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func rotate(_ matrix: inout [[Int]]) {
    var level = 0
    while level < matrix.count/2 {
        var movingArray = Array(repeating: 0, count: matrix.count - 2*level)
        var storeArray = movingArray
        let levelCount = matrix.count - 2*level
        // 依次旋转 上 右 下 左
        
        // 上 到 右
        // 1 储存将要旋转的array
        for i in 0..<levelCount {
            movingArray[i] = matrix[level][level + i]
        }
        // 2 储存将要被旋转到的array
        for i in 0..<levelCount {
            storeArray[i] = matrix[level + i][matrix.count - level - 1]
        }
        // 3 旋转 array
        for i in 0..<levelCount {
            matrix[level + i][matrix.count - level - 1] = movingArray[i]
        }
        // 4 movingArray = storeArray
        movingArray = storeArray
        // 5 赋值storeArray
        for i in 0..<levelCount {
            storeArray[i] = matrix[matrix.count - level - 1][matrix.count - level - 1 - i]
        }
        // 6 替换storeArray的第一个元素为movingArray的最后一个元素（因为在上一次旋转中该元素被替换了）
        storeArray[0] = movingArray.last!
        
        // 右 到 下
        // 3 旋转 array
        for i in 0..<levelCount {
            matrix[matrix.count - level - 1][matrix.count - level - 1 - i] = movingArray[i]
        }
        // 4 movingArray = storeArray
        movingArray = storeArray
        // 5 赋值storeArray
        for i in 0..<levelCount {
            storeArray[i] = matrix[matrix.count - level - 1 - i][level]
        }
        // 6 替换storeArray的第一个元素为movingArray的最后一个元素（因为在上一次旋转中该元素被替换了）
        storeArray[0] = movingArray.last!
        
        // 下 到 左
        // 3 旋转 array
        for i in 0..<levelCount {
            matrix[matrix.count - level - 1 - i][level] = movingArray[i]
        }
        // 4 movingArray = storeArray
        movingArray = storeArray
        
        // 左 到 上
        // 3 旋转 array
        for i in 0..<levelCount {
            matrix[level][level + i] = movingArray[i]
        }
        level += 1
    }
}
