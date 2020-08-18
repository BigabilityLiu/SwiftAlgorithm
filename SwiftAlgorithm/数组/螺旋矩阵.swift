//
//  螺旋矩阵.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/17.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var result = [Int]()
    if matrix.count == 0 {
        return result
    }
    if matrix.first!.count == 0 {
        return result
    }
    let m = matrix.count
    let n = matrix.first!.count
    var direction = 1 // 1right 2down 3left 4up
    var path = Array(repeating: Array(repeating: true, count: n), count: m)
    var x = 0, y = 0
    var failed = 0
    while true {
        if x < 0 || x >= m
            || y < 0 || y >= n
            || !path[x][y]
        {
            failed += 1
            if failed == 2 {
                return result
            } else {
                switch direction {
                case 1:
                    y -= 1
                    x += 1
                case 2:
                    x -= 1
                    y -= 1
                case 3:
                    y += 1
                    x -= 1
                case 4:
                    x += 1
                    y += 1
                case 5:
                    direction = 1
                    y -= 1
                    x += 1
                default:
                    break
                }
                direction += 1
            }
        } else {
            failed = 0
            result.append(matrix[x][y])
            path[x][y] = false
            
            switch direction {
            case 1:
                y += 1
            case 2:
                x += 1
            case 3:
                y -= 1
            case 4:
                x -= 1
            case 5:
                direction = 1
                y += 1
            default:
                break
            }
        }
    }
    return result
}
