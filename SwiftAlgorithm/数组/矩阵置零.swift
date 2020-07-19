//
//  矩阵置零.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/18.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func setZeroes(_ matrix: inout [[Int]]) {
    let m = matrix.count
    if m == 0 {
        return
    }
    let n = matrix[0].count
    // 第几行
    var rowSet = Set<Int>()
    // 第几列
    var colSet = Set<Int>()
    for i in 0..<m {
        for j in 0..<n {
            if matrix[i][j] == 0 {
                rowSet.insert(i)
                colSet.insert(j)
            }
        }
    }
    for i in rowSet {
        for j in 0..<n {
            matrix[i][j] = 0
        }
    }
    for i in colSet {
        for j in 0..<m {
            matrix[j][i] = 0
        }
    }
}
