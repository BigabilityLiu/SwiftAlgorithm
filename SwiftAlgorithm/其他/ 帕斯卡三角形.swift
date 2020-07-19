//
//   帕斯卡三角形.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/17.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    if numRows == 0 {
        return [[]]
    }
    if numRows == 1 {
        return [[1]]
    }
    var result = [[1], [1, 1]]
    if numRows == 2 {
        return result
    }
    for i in 3...numRows {
        var row = [1]
        let preRow = result.last!
        for j in 1...i-2 {
            row.append(preRow[j-1] + preRow[j])
        }
        row.append(1)
        result.append(row)
    }
    return result
}
