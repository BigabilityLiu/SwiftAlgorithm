//
//  搜索二维矩阵 II.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/4.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    
    if matrix.count == 0 || matrix[0].count == 0 {
        return false
    }
    var matrix = matrix
    if searchMatrixHelper(&matrix, target, x: 0, y: 0) {
        return true
    }
    return false
}
func searchMatrixHelper(_ matrix: inout [[Int]], _ target: Int, x: Int, y: Int) -> Bool {
    if x >= matrix.count || y >= matrix[x].count {
        return false
    }
    switch matrix[x][y] {
    case target:
        return true
    case ..<target:
        if searchMatrixHelper(&matrix, target, x: x, y: y + 1) {
            return true
        }
        if searchMatrixHelper(&matrix, target, x: x + 1, y: y) {
            return true
        }
    default:
        matrix[x][y] = Int.max
        break
    }
    return false
}
