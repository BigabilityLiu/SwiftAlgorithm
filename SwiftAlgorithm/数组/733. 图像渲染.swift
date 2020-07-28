//
//  733. 图像渲染.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/22.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
    if sr >= image.count {
        return image
    }
    if sc >= image[sr].count {
        return image
    }
    var result = image
    if image[sr][sc] == newColor{
        return result
    }
    let target = image[sr][sc]
    result[sr][sc] = -1
    floodFill(sr, sc, -1, direction: 0, result: &result, target: target)
    floodFill(sr, sc, -1, direction: 1, result: &result, target: target)
    floodFill(sr, sc, -1, direction: 2, result: &result, target: target)
    floodFill(sr, sc, -1, direction: 3, result: &result, target: target)
    for i in 0..<result.count {
        for j in 0..<result[i].count {
            if result[i][j] == -1 {
                result[i][j] = newColor
            }
        }
    }
    return result
}
// 0 上 1左 2下 3右
func floodFill(_ sr: Int, _ sc: Int, _ newColor: Int, direction: Int, result: inout [[Int]], target: Int) {
    print("x= \(sr), y= \(sc), dirction=\(direction)")
    if direction == 0 {
        // 上
        let x = sr - 1
        let y = sc
        if x >= 0 {
            if result[x][y] == target {
                result[x][y] = newColor
                floodFill(x, y, newColor, direction: 0, result: &result, target: target)
                floodFill(x, y, newColor, direction: 1, result: &result, target: target)
                floodFill(x, y, newColor, direction: 3, result: &result, target: target)
            }
        }
    }
    else if direction == 1 {
        // 左
        let x = sr
        let y = sc - 1
        if y >= 0 {
            if result[x][y] == target {
                result[x][y] = newColor
                floodFill(x, y, newColor, direction: 0, result: &result, target: target)
                floodFill(x, y, newColor, direction: 1, result: &result, target: target)
                floodFill(x, y, newColor, direction: 2, result: &result, target: target)
            }
        }
    }
    else if direction == 2 {
        // 下
        let x = sr + 1
        let y = sc
        if x < result.count {
            if result[x][y] == target {
                result[x][y] = newColor
                floodFill(x, y, newColor, direction: 1, result: &result, target: target)
                floodFill(x, y, newColor, direction: 2, result: &result, target: target)
                floodFill(x, y, newColor, direction: 3, result: &result, target: target)
            }
        }
    }
    else {
        // 右
        let x = sr
        let y = sc + 1
        if y < result[x].count {
            if result[x][y] == target {
                result[x][y] = newColor
                floodFill(x, y, newColor, direction: 0, result: &result, target: target)
                floodFill(x, y, newColor, direction: 2, result: &result, target: target)
                floodFill(x, y, newColor, direction: 3, result: &result, target: target)
            }
        }
    }
}

class Solution333 {
    
    var m = 0
    var n = 0
    var modifiedImage = [[Int]]()
    
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        modifiedImage = image
        if image[sr][sc] == newColor{
            return modifiedImage
        }
        m = modifiedImage.count
        n = modifiedImage[0].count
        dfs(sr, sc, newColor, modifiedImage[sr][sc])
        return modifiedImage
    }

    func dfs(_ sr: Int, _ sc: Int, _ newColor: Int, _ orgColor: Int){
        if sr < 0 || sr >= m || sc < 0 || sc >= n{
            return
        }
        if modifiedImage[sr][sc] != orgColor{
            return
        }
        modifiedImage[sr][sc] = newColor
        dfs(sr - 1, sc, newColor, orgColor)
        dfs(sr + 1, sc, newColor, orgColor)
        dfs(sr, sc - 1, newColor, orgColor)
        dfs(sr, sc + 1, newColor, orgColor)
    }
}
