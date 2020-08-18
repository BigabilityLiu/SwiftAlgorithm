//
//  螺旋矩阵 II.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/8/17.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func generateMatrix(_ n: Int) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    var direction = 1 // 1right 2down 3left 4up
    var x = 0, y = 0
    var failed = 0
    var current = 1
    while true {
        if x < 0 || x >= n
            || y < 0 || y >= n
            || result[x][y] > 0
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
            result[x][y] = current
            current += 1
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
