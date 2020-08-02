//
//  单词搜索.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/28.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func exist(_ board: [[Character]], _ word: String) -> Bool {
    let firstChar = Array(word).first!
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] == firstChar {
                if exist(board, word, (i, j)) {
                    return true
                }
            }
        }
    }
    return false
}
func exist(_ board: [[Character]], _ word: String, _ startPoint: (Int, Int) ) -> Bool {
    if word.count == 0 {
        return true
    }
    let firstChar = Array(word).first!
    let (x, y) = startPoint
    if x < 0 || x >= board.count || y < 0 || y >= board[x].count {
        return false
    } else {
        if board[x][y] != firstChar {
            return false
        }
        var board = board
        var word = word
        board[x][y] = " "
        word = String(word.dropFirst())
        if exist(board, word, (x - 1, y)) ||
            exist(board, word, (x + 1, y)) ||
            exist(board, word, (x, y - 1)) ||
            exist(board, word, (x, y + 1)) {
            return true
        } else {
            return false
        }
    }
}
