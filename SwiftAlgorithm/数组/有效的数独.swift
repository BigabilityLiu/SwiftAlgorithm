//
//  有效的数独.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/13.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var set = Set<Character>()
    for i in 0..<board.count {
        set = Set<Character>()
        for j in 0..<board[0].count {
            let c = board[i][j]
            if c == "." {
                continue
            } else {
                let (success, _) = set.insert(c)
                if !success {
                    return false
                }
            }
        }
    }
    
    for i in 0..<board.count {
        set = Set<Character>()
        for j in 0..<board[0].count {
            let c = board[j][i]
            if c == "." {
                continue
            } else {
                let (success, _) = set.insert(c)
                if !success {
                    return false
                }
            }
        }
    }
    
    for i in 0..<3 {
        for j in 0..<3 {
            set = Set<Character>()
            for x in 0..<3 {
                for y in 0..<3 {
                    let c = board[i*3 + x][j*3 + y]
                    if c == "." {
                        continue
                    } else {
                        let (success, _) = set.insert(c)
                        if !success {
                            return false
                        }
                    }
                }
            }
        }
    }
    return true
}

