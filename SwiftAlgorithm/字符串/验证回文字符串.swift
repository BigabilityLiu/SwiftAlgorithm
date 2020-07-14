//
//  验证回文字符串.swift
//  SwiftAlgorithm
//
//  Created by 刘旭东 on 2020/7/14.
//  Copyright © 2020 LiuXudong. All rights reserved.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {
    var array = [UInt32]()
    for c in s.unicodeScalars {
        switch c.value {
            
            case 48...57,65...90:
                array.append(c.value)
            case 97...122:
                array.append(c.value - 32)
            default:
                continue
        }
    }
    if array.count > 1 {
        for i in 0..<array.count/2 {
            if array[i] != array[array.count - i - 1] {
                return false
            }
        }
    }
    return true
}
