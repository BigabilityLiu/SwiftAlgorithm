//
//  岛屿数量.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/26.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation
func numIslands(_ grid: [[Character]]) -> Int {
    var result = 0
    var grid = grid
    for x in 0..<grid.count {
        for y in 0..<grid[x].count {
            if grid[x][y] == "1" {
                result += 1
                numIslandsHelper(&grid, x: x, y: y)
            }
        }
    }
    return result
}
func numIslandsHelper(_ grid: inout [[Character]], x: Int, y: Int) {
    if x < 0 || x >= grid.count || y < 0 || y >= grid[x].count {
        return
    }
    if grid[x][y] == "0" {
        return
    } else {
        grid[x][y] = "0"
        numIslandsHelper(&grid, x: x - 1, y: y)
        numIslandsHelper(&grid, x: x + 1, y: y)
        numIslandsHelper(&grid, x: x, y: y - 1)
        numIslandsHelper(&grid, x: x, y: y + 1)
    }
}
