//
//  括号生成.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/26.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func generateParenthesis(_ n: Int) -> [String] {
    var dic: [Int: [String]] = [ 0: [],
                                 1: ["()"],
                                 2: ["(())", "()()"]]
    
    if n <= 2 {
        return dic[n]!
    }
    for i in 3...n {
        var result = [String]()
        for j in 1...n {
            let left = Array.init(repeating: "(", count: j).reduce("") { (result, str) -> String in
                result + str
            } + Array.init(repeating: ")", count: j).reduce("") { (result, str) -> String in
                result + str
            }
            let right = dic[n - j]!
            if right.count == 0 {
                result.append(left)
            } else {
                for str in right {
                    result.append(left + str)
                }
            }
        }
        dic[i] = result
    }
    return dic[n]!
}
