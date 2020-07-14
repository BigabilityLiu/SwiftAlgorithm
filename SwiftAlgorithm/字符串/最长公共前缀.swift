//
//  最长公共前缀.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/14.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 {
        return ""
    }
    if strs.count == 1 {
        return strs.first!
    }
    var result = ""
    var index = 0
    while true {
        var currentChar: Character = Character.init(" ")
        for i in 0..<strs.count {
            let str = strs[i]
            if str.count <= index {
                return result
            }
            if i == 0 {
                currentChar = str[str.index(str.startIndex, offsetBy: index)]
            }
            else {
                if str[str.index(str.startIndex, offsetBy: index)] != currentChar {
                    return result
                }
            }
        }
        index += 1
        result += String(currentChar)
    }
}
