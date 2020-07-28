//
//  电话号码的字母组合.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/26.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func letterCombinations(_ digits: String) -> [String] {
    let dic = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"],
    ]
    var result = [String]()
    for c in digits {
        result = letterCombinationsHelper(result, dic[String(c)]!)
    }
    return result
}
func letterCombinationsHelper(_ a1: [String], _ a2: [String]) -> [String] {
    if a1.count == 0 {
        return a2
    }
    if a2.count == 0 {
        return a1
    }
    var result = [String]()
    for c1 in a1 {
        for c2 in a2 {
            result.append("\(c1)\(c2)")
        }
    }
    return result
}
